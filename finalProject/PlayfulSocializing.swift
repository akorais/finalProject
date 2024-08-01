//
//  PlayfulSocializing.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct PlayfulSocializing: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Espresso- Sabrina Carpenter")
                Text("Too Sweet- Hozier")
                Text("JOYRIDE- KEsha")
                Text("BIRDS OF A FEATHER- Billie Eilish")
                Text("Unwritten- Natasha Bedingfield")
                Text("Feather- Sabrina Carpenter")
                Text("Murder On The Dancefloor- Sophie Ellis-Bextor")
                Text("Back On 74- Jungle")
                Text("As It Was- Harry Styles")
                Text("Heat Waves- Glass Animals")
                
                Link("Click here for a playlist!",destination: URL (string: "hhttps://open.spotify.com/playlist/37i9dQZF1DX3rxVfibe1L0?si=8028d5c707db478e")!)
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
            }
        }
    }
}
#Preview {
    PlayfulSocializing()
}
