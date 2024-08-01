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
                    Text("OR")
                        .foregroundColor(Color.black)
                NavigationLink(destination: EnergeticPlayful()) {
                    Text("Playful")
                    }
                }
            }
        }
    }
}
#Preview {
    MoodEnergetic()
}
