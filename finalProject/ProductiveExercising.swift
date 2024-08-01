//
//  ProductiveExercising.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct ProductiveExercising: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("NOSTYLIST- Destroy Lonely")
                Text("Otaku Hot Girl- Megan Thee Stallion")
                Text("OKAY- JT")
                Text("KEHLANI- Jordan Adeetunji")
                Text("Don Who Leo- Monaleo")
                Text("Got Me Started- Troye Sivan")
                Text("Not My Fault- Renee Rapp, Megan Thee Stallion")
                Text("yes, and?- Ariana Grande")
                Text("Single Ladies(Put a Ring on It)- Beyonce")
                Text("Jump- Tyla")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DX6GwdWRQMQpq?si=bc5981249e164c8d")!)
            }
            }
    }
}
#Preview {
    ProductiveExercising()
}
