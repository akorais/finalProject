//
//  Lenker.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct Lenker: View {
    @State private var showActionSheet = false

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
                        .onTapGesture {
                                showActionSheet = true
                            }
                    
                    VStack(alignment: .leading, spacing: 1) {
                        Text("FEATURED RELEASE")
                            .font(.system(.caption2, weight: .medium))
                            .foregroundStyle(.secondary)
                        Text("songs")
                            .font(.callout)
                        Text("10 songs")
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
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Listen on"),
                message: Text("Choose a platform"),
                buttons: [
                    .default(Text("Apple Music")) {
                        openURL("https://music.apple.com/us/album/songs/1526437437")
                    },
                    .default(Text("Spotify")) {
                        openURL("https://open.spotify.com/album/2Qt8Z1LB3Fsrf6nhBNsvUJ?si=BkPmyyTARHe167lc443eJw")
                    },
                    .default(Text("YouTube")) {
                        openURL("https://music.youtube.com/playlist?list=OLAK5uy_lGmPAwykSo9CVkw9CHz18OjmY6pMfAcqc&si=rSYJetfVp2OUtYec")
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

struct Lenker_Previews: PreviewProvider {
    static var previews: some View {
        Lenker()
    }
}
