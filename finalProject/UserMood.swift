//
//  UserMood.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct UserMood: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your current mood?")
                VStack {
                    NavigationLink(destination: MoodHappy()) {
                        Text("Happy")
                    NavigationLink(destination: MoodSad()) {
                        Text("Sad")
                    NavigationLink(destination: MoodAngry()) {
                        Text("Angry")
                    NavigationLink(destination: MoodEnergetic()) {
                        Text("Energetic")
                        }
                        }
                        }
                    }
                }
                    }
                    
                }
            }
        }
    
#Preview {
    UserMood()
}
