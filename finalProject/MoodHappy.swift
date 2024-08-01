//
//  MoodHappy.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct MoodHappy: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Let's get more specific!")
                NavigationLink(destination: HappyEnergized()) {
                    Text("Energized")
                    Text("OR")
                        .foregroundColor(Color.black)
                NavigationLink(destination: HappyRelaxed()) {
                    Text("Relaxed")
                    }
                }
            }
        }
    }
}
#Preview {
    MoodHappy()
}

