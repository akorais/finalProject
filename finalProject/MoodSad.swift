//
//  MoodSad.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct MoodSad: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Let's get more specific!")
                NavigationLink(destination: SadDepressed()) {
                    Text("Depressed")
                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                    Text("OR")
                        .foregroundColor(Color.black)
                NavigationLink(destination: SadReflective()) {
                    Text("Reflective")
                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                    }
                }
            }
        }
    }
}
#Preview {
    MoodSad()
}
