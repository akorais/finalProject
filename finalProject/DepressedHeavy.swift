//
//  DepressedHeavy.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct DepressedHeavy: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("haunt me (x 3)- Teen Suicide")
                Text("Nothing's New- Rio Romeo")
                Text("Say You Won't Let Go- James Arthur")
                Text("Easy On Me- Adele")
                Text("Another Love- Tom Odell")
                Text("Someone You Loved- Lewis Capaldi")
                Text("Atlantis- Seafret")
                Text("Take Me To Church- Hozier")
                Text("traitor- Olivia Rodrigo")
                Text("Daylight- Davie Kushner")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/track/4PTG3Z6ehGkBFwjybzWkR8?si=29cc4ccbf1c9448e")!)
            }
            }
    }
}
#Preview {
    DepressedHeavy()
}
