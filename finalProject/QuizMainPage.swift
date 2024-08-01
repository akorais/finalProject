//
//  QuizMainPage.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct QuizMainPage: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Welcome to the quiz!")
                NavigationLink(destination: UserMood()) {
                    Text("Click here to begin!")
                }
            }
        }
    }
}
#Preview {
    QuizMainPage()
}
