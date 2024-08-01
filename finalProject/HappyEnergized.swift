//
//  HappyEnergized.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct HappyEnergized: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Just one more question!")
                NavigationLink(destination: EnergizedPop()) {
                    Text("Pop")
                    Text("OR")
                        .foregroundColor(Color.black)
                    NavigationLink(destination: EnergizedRap()) {
                        Text("Rap")
                    }
                }
            }
        }
    }
}
#Preview {
    HappyEnergized()
}
