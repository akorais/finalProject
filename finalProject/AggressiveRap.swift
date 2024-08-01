//
//  AggressiveRap.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct AggressiveRap: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Love Sosa- Chief Keef")
                Text("FE!N- Travis Scott, Playboi Carti")
                Text("Breathe- Yeat")
                Text("HUMBLE.- Kendrick Lamar")
                Text("Only- Nicki Minaj, Drake, Lil Wayne")
                Text("Like That- Future, Metro Boomin, Kendrick Lamar")
                Text("redrum- 21 Savage")
                
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DX0XUsuxWHRQd?si=abb541352aae4053")!)
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
            }
        }
    }
}
#Preview {
    AggressiveRap()
}
