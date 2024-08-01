//
//  AngryAggressive.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct AngryAggressive: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Just one more question!")
                NavigationLink(destination: AggressiveRap()) {
                    Text("Rap")
                    Text("OR")
                        .foregroundColor(Color.black)
                    NavigationLink(destination: AggressiveMetal()) {
                        Text("Metal")
                    }
                }
            }
        }
    }
}
#Preview {
    AngryAggressive()
}

