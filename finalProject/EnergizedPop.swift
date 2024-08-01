//
//  EnergizedPop.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct EnergizedPop: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("HOT TO GO- Chappell Roan")
                Text("Nonsense- Sabrina Carpenter")
                Text("PINK LIKE SUKI- Pebbles&TamTam")
                Text("360- Charli xcx")
                Text("Super Bass- Nicki Minaj")
                Text("Got Me Started- Troye Sivan")
                Text("Not My Fault- Renee Rapp, Megan Thee Stallion")
                Text("yes, and?- Ariana Grande")
                Text("Single Ladies(Put a Ring on It)- Beyonce")
                Text("Jump- Tyla")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DX45grRWk2ghU?si=389ab12bdfaf4887")!)
            }
            }
            }
                
        }
    
#Preview {
    EnergizedPop()
}
