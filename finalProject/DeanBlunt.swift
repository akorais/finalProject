//
//  DeanBlunt.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct DeanBlunt: View {
    @State private var showActionSheet = false

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Image("deanblunt1")
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
                        .onTapGesture {
                                showActionSheet = true
                            }
                    
                    VStack(alignment: .leading, spacing: 1) {
                        Text("FEATURED RELEASE")
                            .font(.system(.caption2, weight: .medium))
                            .foregroundStyle(.secondary)
                        Text("zushi".uppercased())
                            .font(.callout)
                        Text("24 songs")
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
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Listen on"),
                message: Text("Choose a platform"),
                buttons: [
                    .default(Text("Apple Music")) {
                        
                        openURL("https://music.apple.com/us/album/zushi/1504144470")
                    },
                    .default(Text("Spotify")) {
                        openURL("https://open.spotify.com/album/6awMz5xtEk8XSlID98YfMv?autoplay=true")
                    },
                    .default(Text("YouTube")) {
                        openURL("https://music.youtube.com/playlist?list=OLAK5uy_kQVkQEyMzi2Lk3yjW-kNA6v5t3tGzI2Ok")
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

struct DeanBlunt_Previews: PreviewProvider {
    static var previews: some View {
        DeanBlunt()
    }
}
