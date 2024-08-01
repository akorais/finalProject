//
//  EnergizedRap.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct EnergizedRap: View {
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
                Text("Not Like Us- Kendrick Lamar")
                Text("Yeah Glo!- Glorilla")
                Text("BAND4BAND- Central Cee, Lil Baby")
                Text("Never Lose Me- Flo Milli")
                Text("Like What- Cardi B")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DX6GwdWRQMQpq?si=706fac1784ff4d6e")!)
            }
            }
    }
}
#Preview {
    EnergizedRap()
}
