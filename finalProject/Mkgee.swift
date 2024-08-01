//
//  Mkgee.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI


struct Mkgee: View {
    @State private var showActionSheet = false

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
                        .onTapGesture {
                                showActionSheet = true
                            }
                    
                    VStack(alignment: .leading, spacing: 1) {
                        Text("FEATURED RELEASE")
                            .font(.system(.caption2, weight: .medium))
                            .foregroundStyle(.secondary)
                        Text("Two Star & The Dream Police")
                            .font(.callout)
                        Text("12 songs")
                            .foregroundStyle(.secondary)
                            .font(.subheadline)
                        
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
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Listen on"),
                message: Text("Choose a platform"),
                buttons: [
                    .default(Text("Apple Music")) {
                        openURL("https://music.apple.com/us/album/two-star-the-dream-police/1726030992")
                    },
                    .default(Text("Spotify")) {
                        openURL("https://open.spotify.com/album/6DlLdXBGCsSDPOV8R2pCl7?autoplay=true")
                    },
                    .default(Text("YouTube")) {
                        openURL("https://music.youtube.com/playlist?list=OLAK5uy_lfFd9onx195eTvvpeBxQNxaC7F_TYD13U&feature=gws_kp_album&feature=gws_kp_artist")
                    },
                    .cancel()
                ]
            )
        }
    }
    private func openURL(_ urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}

struct Mkgee_Previews: PreviewProvider {
    static var previews: some View {
        Mkgee()
    }
}
