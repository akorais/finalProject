//
//  AngryIntense.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct AngryIntense: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Just one more question!")
                NavigationLink(destination: IntenseMetal()) {
                    Text("Metal")
                    Text("OR")
                        .foregroundColor(Color.black)
                    NavigationLink(destination: IntensePunk()) {
                        Text("Punk")
                    }
                }
            }
        }
    }
}
#Preview {
    AngryIntense()
}
