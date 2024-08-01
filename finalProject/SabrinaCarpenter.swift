//
//  SabrinaCarpenter.swift
//  finalProject
//
//  Created by Paris-Ashley Tumba on 8/1/24.
//

import SwiftUI
struct SabrinaCarpenter: View {
    var body: some View {
        
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing: 20.0){
                Image("Sabrina_Carpenter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
            HStack {
               Text("   Sabrina Carpenter")
                    .fontWeight(.bold)
                Text("New Upcoming Artist!!")
                
                }
         
                Text("Sabrina Carpenter is a 25 year old American singer and actress. Sabrina Carpenter has 5 studio albums, 24 singles, and 31 music videos. If you liked her songs, 'Espresso' or 'Please Please Please', make sure to check out her other songs too!")
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
    SabrinaCarpenter()
}
