//
//  SwipeCardView.swift
//  finalProject
//
//  Created by Paris-Ashley Tumba on 8/1/24.
//

import SwiftUI
struct SwipeCardView: View {
    @State private var offset: CGSize = .zero
    @State private var showActionSheet = false
    let song: Song
    var onRemove: (_ song: Song, _ liked: Bool) -> Void
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 5)
            VStack {
               
                AsyncImage(url: URL(string: song.albumCoverURL)) { image in
                    Button(action: {
                        showActionSheet = true
                    }) {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                            .cornerRadius(10)
                    }
                } placeholder: {
                    ProgressView()
                }
                Text(song.title)
                    .font(.title)
                    .padding()
                Text(song.artist)
                    .font(.subheadline)
                    .padding()
                Spacer()
                HStack {
                    Button(action: {
                        onRemove(song, false)
                    }) {
                        Image(systemName: "hand.thumbsdown.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                            .padding()
                    }
                    Spacer()
                    Button(action: {
                        onRemove(song, true)
                    }) {
                        Image(systemName: "hand.thumbsup.fill")
                            .font(.largeTitle)
                            .foregroundColor(.green)
                            .padding()
                    }
                }
                .padding()
            }
            .padding()
        }
        .frame(width: 300, height: 500)
        .offset(x: offset.width, y: 0)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                }
                .onEnded { _ in
                    if offset.width > 100 {
                        onRemove(song, true)
                    } else if offset.width < -100 {
                        onRemove(song, false)
                    } else {
                        offset = .zero
                    }
                }
        )
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Open on"), buttons: [
                .default(Text("Apple Music")) {
                    openLink(for: .appleMusic)
                },
                .default(Text("Spotify")) {
                    openLink(for: .spotify)
                },
                .default(Text("YouTube")) {
                    openLink(for: .youtube)
                },
                .cancel()
            ])
        }
    }
  
    private func openLink(for platform: StreamingPlatform) {
        var urlString: String?
        switch platform {
        case .appleMusic:
            urlString = song.appleMusicURL
        case .spotify:
            urlString = song.spotifyURL
        case .youtube:
            urlString = song.youtubeURL
        }
        if let urlString = urlString, let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}
enum StreamingPlatform {
    case appleMusic
    case spotify
    case youtube
}
struct SwipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeCardView(
            song: Song(
                title: "Song Title",
                artist: "Artist",
                albumCoverURL: "https://via.placeholder.com/150",
                appleMusicURL: "https://music.apple.com/song1",
                spotifyURL: "https://open.spotify.com/track/song1",
                youtubeURL: "https://www.youtube.com/watch?v=song1"
            ),
            onRemove: { _, _ in }
        )
    }
}
