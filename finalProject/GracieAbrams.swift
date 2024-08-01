//
//  GracieAbrams.swift
//  finalProject
//
//  Created by Paris-Ashley Tumba on 8/1/24.
//

import SwiftUI
struct GracieAbrams: View {
    var body: some View {
        
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing: 20.0){
                Image("Gracie_Abrams")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
            HStack {
               Text("   Gracie Abrams")
                    .fontWeight(.bold)
                Text("New Upcoming Artist!!")
                
                }
         
                Text("Gracie Abrams is a 24 year old song writer and singer. Gracie Abrams has 5 different albums. A few of her biggest hits are 'us' and 'I Love You, I'm Sorry.' If you like any of these, be sure to check her out")
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
    GracieAbrams()
}
