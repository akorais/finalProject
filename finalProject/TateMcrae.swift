//
//  TateMcrae.swift
//  finalProject
//
//  Created by Paris-Ashley Tumba on 8/1/24.
//

import SwiftUI
struct TateMcrae: View {
    var body: some View {
        
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing: 20.0){
                Image("Tate_Mcrae")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
            HStack {
               Text("   Tate Mcrae")
                    .fontWeight(.bold)
                Text("New Upcoming Artist!!")
                
                }
         
                Text("Tate Mcrae is a 21 year old pop singer. She has 2 studio albums and 35 singles. Some of her most popular hits are 'Greedy' and 'You broke me first.' One of her most recent song is 'You.' If you like pop music, be sure to check her out.")
                    .padding()
                
        }
        .background(Rectangle()
        .foregroundColor(.white))
        .cornerRadius(25)
        .shadow(radius: 7)
        .padding()
            
        }
    }
}
#Preview {
    TateMcrae()
}
