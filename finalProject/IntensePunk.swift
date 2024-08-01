//
//  IntensePunk.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct IntensePunk: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Cherry Bomb- The Runaways")
                Text("One Way Or Another- Blondie")
                Text("God Save the Queen- Sex Pistols")
                Text("I Fought the Law- The Clash")
                Text("Blister In The Sun- Violent Femmes")
                Text("Got Me Started- Troye Sivan")
                Text("I Wanna Be Your Dog- The Stooges")
                Text("Last CAress- Misfits, Glenn Danzig")
                Text("London Calling- The Clash")
                Text("Lust For Life- Iggy Pop")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DX3LDIBRoaCDQ?si=ddcaee63b6d9468d")!)
            }
            }
    }
}
#Preview {
    IntensePunk()
}
