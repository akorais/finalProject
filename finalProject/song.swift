//
//  song.swift
//  finalProject
//
//  Created by Paris-Ashley Tumba on 8/1/24.
//

import Foundation
struct Song: Identifiable {
    var id = UUID()
    var title: String
    var artist: String
    var albumCoverURL: String
    var appleMusicURL: String?
    var spotifyURL: String?
    var youtubeURL: String?
}
