//
//  PlayfulTraveling.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct PlayfulTraveling: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Feather- Sabrina Carpenter")
                Text("Kill Bill- SZA")
                Text("greedy- Tate McRae")
                Text("KEHLANI- Jordan Adeetunji")
                Text("Obsessed- Mariah Carey")
                Text("Linger- The Cranberries")
                Text("Hide Away- Daya")
                Text("Into You- Ariana Grande")
                Text("Only Girl(In The World)- Rihanna")
                Text("Cool for the Summer- Demi Lovato")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DWWMOmoXKqHTD?si=acd7f264dba14277")!)
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
            }
        }
    }
}
#Preview {
    PlayfulTraveling()
}
