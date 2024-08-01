//
//  SwipeView.swift
//  finalProject
//
//  Created by Paris-Ashley Tumba on 8/1/24.
//
import SwiftUI
struct SwipeView: View {
    @State private var songs: [Song] = [
        Song(
            title: "Sinking Boat",
            artist: "Infinity Song",
            albumCoverURL: "https://i1.sndcdn.com/artworks-UgDgiIWJPVpt-0-t500x500.jpg",
            appleMusicURL: "https://music.apple.com/us/album/sinking-boat/1749120066?i=1749120384",
            spotifyURL: "https://open.spotify.com/track/1jvOjD7K9707WeA99qWyNC?si=fc5496a23b0240b0",
            youtubeURL: "https://www.youtube.com/watch?v=d4UiBIUVa_Q"
        ),
        Song(
            title: "Dive In",
            artist: "Pierce The Veil",
            albumCoverURL: "https://images.genius.com/dc3ff58e1a397c3f98087fa5e789af2c.1000x1000x1.jpg",
            appleMusicURL: "https://music.apple.com/us/album/dive-in/1638177440?i=1638178672",
            spotifyURL: "https://open.spotify.com/track/6LhGzSZlIGxZpyIXXZn9ZV?si=91df48c66f28441f",
            youtubeURL: "https://www.youtube.com/watch?v=hu2GuM4wZAM"
        ),
        Song(
            title: "Fashion Killa",
            artist: "A$AP Rocky",
            albumCoverURL: "https://i.scdn.co/image/ab67616d0000b2732ae92030b51fb8135d694af9",
            appleMusicURL: "https://music.apple.com/us/album/fashion-killa/1450690198?i=1450690215",
            spotifyURL: "https://open.spotify.com/track/0O3TAouZE4vL9dM5SyxgvH?si=946decd22905404b",
            youtubeURL: "https://www.youtube.com/watch?v=snY-MhPcPg0"
        ),
        Song(
            title: "Hot Rod",
            artist: "Dayglow",
            albumCoverURL: "https://i1.sndcdn.com/artworks-000417380154-t5up3n-t240x240.jpg",
            appleMusicURL: "https://music.apple.com/us/album/hot-rod/1482950619?i=1482950906",
            spotifyURL: "https://open.spotify.com/track/5euumi7eqEgmxvCIJw2pSp?si=d7f2307466e640fa",
            youtubeURL: "https://www.youtube.com/watch?v=tsJXoqvmgzM"
        ),
        Song(
            title: "Cheetah",
            artist: "Deux Visages",
            albumCoverURL: "https://i.scdn.co/image/ab67616d0000b273c6dcce15b4e1ea47fe4f318a",
            appleMusicURL: "https://music.apple.com/us/album/cheetah/1706918117?i=1706918124",
            spotifyURL: "https://open.spotify.com/track/2lSYQyP8LYXyfSp6S1kJu0?si=34b30fa59a2f4806",
            youtubeURL: "https://www.youtube.com/watch?v=GhOoHU-_amk"
        ),
        Song(
            title: "Sexy to Someone",
            artist: "Clairo",
            albumCoverURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbhYjFPS_vlNxz7IMv_0gta7B2im-MSUYmMQ&s",
            appleMusicURL: "https://music.apple.com/us/album/sexy-to-someone/1742301413?i=1742301417",
            spotifyURL: "https://open.spotify.com/track/2Nq4SFbvYYZa8AF7lD7CWU?si=935e982608e5427e",
            youtubeURL: "https://www.youtube.com/watch?v=w18NGVqm0bg"
        ),
        Song(
            title: "Genesis",
            artist: "Grimes",
            albumCoverURL: "https://media.pitchfork.com/photos/5929f82b0c2bba1b7de03b5a/1:1/w_450%2Cc_limit/d02e984a.jpg",
            appleMusicURL: "https://music.apple.com/us/album/genesis/499874506?i=499875049",
            spotifyURL: "https://open.spotify.com/track/3cjvqsvvU80g7WJPMVh8iq?si=890759aa926040c6",
            youtubeURL: "https://www.youtube.com/watch?v=1FH-q0I1fJY"
        ),
    ]
    @State private var likedSongs: [Song] = []
    @State private var dislikedSongs: [Song] = []
    var body: some View {
        VStack {
            if songs.isEmpty {
                Text("No more songs")
            } else {
                ForEach(songs.prefix(1), id: \.id) { song in
                    SwipeCardView(song: song, onRemove: { removedSong, liked in
                        if liked {
                            likedSongs.append(removedSong)
                        } else {
                            dislikedSongs.append(removedSong)
                        }
                        songs.removeAll { $0.id == removedSong.id }
                    })
                }
            }
        }
    }
}
struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}
