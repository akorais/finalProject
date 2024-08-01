//
//  RelaxedSinging.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct RelaxedSinging: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Lovely Day- Bill Withers")
                Text("Be My Baby- The Ronettes")
                Text("Happy Together- The Turtles")
                Text("Uptown Girl- Billy Joel")
                Text("American Pie- Don McLean")
                Text("Everywhere- Fleetwood Mac")
                Text("My Girl- The Temptations")
                Text("Tiny Dancer- Elton John")
                Text("Here Comes The Sun- The Beatles")
                Text("Our Last Summer- ABBA")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DX9fZ7amiNVu6?si=67c4f30cc17341d4")!)
            }
            }
    }
}
#Preview {
    RelaxedSinging()
}
