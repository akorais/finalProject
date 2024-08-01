//
//  RelaxedInstrumental.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct RelaxedInstrumental: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Halo- Mia Carrera")
                Text("Viva La Vida- Chris Island")
                Text("Rocket Man- Fiona Greenly")
                Text("Fix You- Lars Florence")
                Text("The Scientist- Kit Sutton")
                Text("Let It Be- Laszlo Teofil")
                Text("How to Save a Life- Northern Dreams")
                Text("The Joke- Zola Davis")
                Text("Piano Man- Alec Taylor")
                Text("Rather Be- Marc Millis")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DX9j444F9NCBa?si=49c93a12779d4f39")!)
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
            }
        }
    }
}
#Preview {
    RelaxedInstrumental()
}
