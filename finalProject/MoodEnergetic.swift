//
//  MoodEnergetic.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct MoodEnergetic: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Let's get more specific!")
                NavigationLink(destination: EnergeticProductive()) {
                    Text("Productive")
                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                    Text("OR")
                        .foregroundColor(Color.black)
                NavigationLink(destination: EnergeticPlayful()) {
                    Text("Playful")
                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                    }
                }
            }
        }
    }
}
#Preview {
    MoodEnergetic()
}
