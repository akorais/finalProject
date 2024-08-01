//
//  DeanBlunt.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct DeanBlunt: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Image("deanblunt")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 380)
                    .clipped()
                    
                    .overlay(alignment: .bottom) {
                        HStack {
                            Text("Dean Blunt")
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
                    Image("deanalbum")
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
                        Text("zushi".uppercased())
                            .font(.callout)
                        Text("24 songs")
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
                    .frame(height: 500)
                    .clipped()
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .foregroundStyle(Color(.quaternarySystemFill))
                    .overlay {
                        Text("""
                        Dean Blunt, a British musician and artist, is renowned for his eclectic and genre-defying music, which blends elements of lo-fi, electronic, and alternative sounds. He first gained prominence as part of the experimental duo Hype Williams with Inga Copeland, known for their boundary-pushing and often cryptic public personas. Blunt's solo career, launched in 2011, features notable albums like The Redeemer and Black Metal, which explore themes of urban life and identity with a unique, genre-blurring style.
                        Blunt's enigmatic persona adds to his allure; he's known for his unpredictable performances and stunts, such as sending a bodyguard to accept an award on his behalf. This mysterious image, combined with his innovative music, positions him as a provocative and influential figure in the contemporary music scene.
                        """)
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

struct DeanBlunt_Previews: PreviewProvider {
    static var previews: some View {
        DeanBlunt()
    }
}
