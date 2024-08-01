//
//  EnergeticPlayful.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct EnergeticPlayful: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Just one more question!")
                NavigationLink(destination: PlayfulSocializing()) {
                    Text("Socializing")
                    Text("OR")
                        .foregroundColor(Color.black)
                    NavigationLink(destination: PlayfulTraveling()) {
                        Text("Traveling")
                    }
                }
            }
        }
    }
}
#Preview {
    EnergeticPlayful()
}
