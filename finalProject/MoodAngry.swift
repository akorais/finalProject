//
//  MoodAngry.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct MoodAngry: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Let's get more specific!")
                NavigationLink(destination: AngryIntense()) {
                    Text("Intense")
                    Text("OR")
                        .foregroundColor(Color.black)
                NavigationLink(destination: AngryAggressive()) {
                    Text("Aggressive")
                    }
                }
            }
        }
    }
}
#Preview {
    MoodAngry()
}
