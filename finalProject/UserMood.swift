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
                            .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                    NavigationLink(destination: MoodSad()) {
                        Text("Sad")
                            .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                    NavigationLink(destination: MoodAngry()) {
                        Text("Angry")
                            .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                    NavigationLink(destination: MoodEnergetic()) {
                        Text("Energetic")
                            .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
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
