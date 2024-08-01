//
//  SadDepressed.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct SadDepressed: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Just one more question!")
                NavigationLink(destination: DepressedSoft()) {
                    Text("Soft & Reflective")
                    Text("OR")
                        .foregroundColor(Color.black)
                    NavigationLink(destination: DepressedHeavy()) {
                        Text("Heavy & Intense")
                    }
                }
            }
        }
    }
}
#Preview {
    SadDepressed()
}

