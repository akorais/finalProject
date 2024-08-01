//
//  Lenker.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct Lenker: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Image("lenker")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 380)
                    .clipped()
            
                    .overlay(alignment: .bottom) {
                        HStack {
                            Text("Adrienne Lenker")
                                .font(.system(.largeTitle, weight: .semibold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .foregroundStyle(.white)
                                .padding(.leading)
                            Image(systemName: "play.fill")
                                .padding(12)
                                .background {
                                    Rectangle()
                                        .fill(.clear)
                                        .background(Material.thick)
                                        .mask {
                                            Circle()
                                        }
                                        .shadow(color: .black.opacity(0.5), radius: 8, x: 0, y: 4)
                                }
                                .font(.callout)
                        }
                        .padding()
                    }
                HStack(spacing: 16) {
                    Image("lenkeralbum")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90)
                        .clipped()
                        .mask { RoundedRectangle(cornerRadius: 3, style: .continuous) }
                        .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.25), radius: 8, x: 0, y: 4)
                    VStack(alignment: .leading, spacing: 1) {
                        Text("FEATURED RELEASE")
                            .font(.system(.caption2, weight: .medium))
                            .foregroundStyle(.secondary)
                        Text("songs")
                            .font(.callout)
                        Text("10 songs")
                            .foregroundStyle(.secondary)
                            .font(.subheadline)
                        Image(systemName: "link")
                            .imageScale(.small)
                            .symbolRenderingMode(.monochrome)
                            .foregroundStyle(.blue)
                            .font(.system(.footnote, weight: .semibold))
                            .padding(6)
                            .background {
                                Circle()
                                    .foregroundStyle(Color(.systemFill))
                            }
                            .padding(.top, 7)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                }
                .padding(.top, 24)
                .padding(.horizontal, 20)
                Text("About the Artist")
                    .padding(.bottom, 20)
                    .font(.system(.title2, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .padding(.horizontal)
                    .padding(.top, 30)
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(height: 420)
                    .clipped()
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .foregroundStyle(Color(.quaternarySystemFill))
                    .overlay {
                        Text("Adrianne Lenker, known for her solo work and as the lead singer of Big Thief, has garnered acclaim for her deeply introspective and poetic songwriting. Her latest album, Bright Future, showcases her growth as an artist with its blend of experimental and delicate elements. The album features a mix of personal anecdotes and abstract poetry, exploring themes of love, loss, and nature. Lenker's use of analog recording equipment and collaboration with musicians like Nick Hakim and Mat Davidson adds a rich, warm texture to the music, complementing her evocative lyrics. Her performances range from intimate whispers to powerful melodies, creating a captivating listening experience.")
                            .font(.callout)
                            .padding(.vertical, 30)
                            .padding(.horizontal, 40)
                    }
                Spacer()
                    .frame(height: 50)
                    .clipped()
            }
        }
    }
}

struct Lenker_Previews: PreviewProvider {
    static var previews: some View {
        Lenker()
    }
}
