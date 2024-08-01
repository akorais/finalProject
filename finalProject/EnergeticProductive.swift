//
//  EnergeticProductive.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct EnergeticProductive: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Just one more question!")
                NavigationLink(destination: ProductiveStudying()) {
                    Text("Studying/Working")
                    Text("OR")
                        .foregroundColor(Color.black)
                    NavigationLink(destination: ProductiveExercising()) {
                        Text("Exercising")
                    }
                }
            }
        }
    }
}
#Preview {
    EnergeticProductive()
}

