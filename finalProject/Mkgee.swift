//
//  Mkgee.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct Mkgee: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Image("mkgee")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 380)
                    .clipped()
                   
                    .overlay(alignment: .bottom) {
                        HStack {
                            Text("Mk.gee")
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
                    Image("mkgeealbum")
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
                        Text("Two Star & The Dream Police")
                            .font(.callout)
                        Text("12 songs")
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
                    .frame(height: 450)
                    .clipped()
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .foregroundStyle(Color(.quaternarySystemFill))
                    .overlay {
                        Text("""
                        Mk.gee, an American indie artist known for blending electronic and funk sounds, recently released the album \"Two Star and the Dream Police.\" This album marks a shift towards a more introspective and ambient style, highlighting Mk.gee's artistic growth. It explores themes of self-reflection and surreal experiences, characterized by rich, layered production and dreamy melodies.
                        Originally from New Jersey, Mk.gee (Michael Todd Gordon) began his music career in Los Angeles. He gained recognition through his early EPs, which combined indie rock with electronic elements. His unique sound has attracted a diverse audience, making him a rising star in the indie music scene.
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

struct Mkgee_Previews: PreviewProvider {
    static var previews: some View {
        Mkgee()
    }
}
