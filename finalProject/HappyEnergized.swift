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
                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                    Text("OR")
                        .foregroundColor(Color.black)
                    NavigationLink(destination: EnergizedRap()) {
                        Text("Rap")
                            .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                    }
                }
            }
        }
    }
}
#Preview {
    HappyEnergized()
}
