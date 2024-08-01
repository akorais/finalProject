//
//  SadReflective.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct SadReflective: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Just one more question!")
                NavigationLink(destination: ReflectiveIndie()) {
                    Text("Indie/Alt")
                    Text("OR")
                        .foregroundColor(Color.black)
                    NavigationLink(destination: ReflectiveClassical()) {
                        Text("Classical")
                    }
                }
            }
        }
    }
}
#Preview {
    SadReflective()
}
