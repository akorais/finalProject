//
//  DepressedSoft.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct DepressedSoft: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("The Night We Met- Strange Trails")
                Text("Sidelines- Phoebe Bridgers")
                Text("What Was I Made For?- Billie Eilish")
                Text("Fourth of July- Sufjan Stevens")
                Text("My Love Mine All Mine- Mitski")
                Text("Got Me Started- Troye Sivan")
                Text("Margaret- Lana Del Ray, Bleachers")
                Text("Romantic Homicide- d4vd")
                Text("I Know You- Faye Webster")
                Text("ceilings- Lizzy McAlpine")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DWVV27DiNWxkR?si=93249651eedc4315")!)
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
            }
        }
    }
}
#Preview {
    DepressedSoft()
}
