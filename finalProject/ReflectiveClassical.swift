//
//  ReflectiveClassical.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct ReflectiveClassical: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Fracture- Stephen Moccio")
                Text("Filma Solo- Gabriel Olafs")
                Text("Adieux- Ludovico Einaudi")
                Text("Losar- Joep Beving")
                Text("The Lily- Gabriel Olafs")
                
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DWVFeEut75IAL?si=5b8bb0eb60b04f02")!)
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
            }
        }
    }
}
#Preview {
    ReflectiveClassical()
}
