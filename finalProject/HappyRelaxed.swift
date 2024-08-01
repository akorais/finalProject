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
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                Text("OR")
                    .foregroundColor(Color.black)
                NavigationLink(destination: RelaxedSinging()) {
                    Text("Singing")
                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                }
            }
        }
    }
    }
#Preview {
    HappyRelaxed()
}
