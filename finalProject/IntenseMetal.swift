//
//  IntenseMetal.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct IntenseMetal: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Crown of Horns- Judas Priest")
                Text("Dogs of War- Motley Crue")
                Text("Sinners of the Seven Seas- Powerwolf")
                Text("Screaming Suicide- Metallica")
                Text("Meet Your Maker- In Flames")
                Text("While We Serve- Orbit Culture")
                Text("Custer- Slipknot")
                Text("Chop Suey!- System Of A Down")
                Text("Seeing Red- Architects")
                Text("Parasite Eve- Bring Me The Horizon")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DX9qNs32fujYe?si=840050e0ecc940fc")!)
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
            }
        }
    }
}
#Preview {
    IntenseMetal()
}
