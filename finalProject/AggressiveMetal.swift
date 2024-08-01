//
//  AggressiveMetal.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct AggressiveMetal: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Raining Blood- Slayer")
                Text("Paranoid- Black Sabbath")
                Text("Master of Puppets- Metallica")
                Text("The Trooper- Iron Maiden")
                Text("Duality- Slipknot")
                Text("Du hast- Rammstein")
                Text("Rainbow in the Dark- Dio")
                Text("Tears Don't Fall- Bullet for my Valentine")
                Text("Madhouse- Anthrax")
                Text("Raise Your Hands- Amon Amarth")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DWWOaP4H0w5b0?si=a2dbac73983b4705")!)
            }
            }
    }
}
#Preview {
    AggressiveMetal()
}
