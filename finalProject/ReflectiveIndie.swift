//
//  ReflectiveIndie.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct ReflectiveIndie: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Wasted Summers- juju<3")
                Text("Not Strong Enough- boygenius")
                Text("Someday- The Strokes")
                Text("BIRDS OF A FEATHER- Billie Eilish")
                Text("End of Beginning- Djo")
                Text("Good Luck, Babe!- Chappell Roan")
                Text("Ribs- Lorde")
                Text("Close To You- Gracie Abrams")
                Text("Lovers Rock- TV Girl")
                Text("Champagne Coast- Blood Orange")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DWVsh2vXzlKFb?si=dc0717aa544942ab")!)
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
            }
        }
    }
}
#Preview {
    ReflectiveIndie()
}
