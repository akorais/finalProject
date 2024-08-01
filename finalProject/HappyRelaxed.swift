//
//  HappyRelaxed.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct HappyRelaxed: View {
    var body: some View {
        VStack {
            Text("Just one more question!")
            NavigationLink(destination: RelaxedInstrumental()) {
                Text("Instrumental")
                Text("OR")
                    .foregroundColor(Color.black)
                NavigationLink(destination: RelaxedSinging()) {
                    Text("Singing")
                }
            }
        }
    }
    }
#Preview {
    HappyRelaxed()
}
