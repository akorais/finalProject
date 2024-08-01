//
//  SabrinaCarpenter.swift
//  finalProject
//
//  Created by Paris-Ashley Tumba on 8/1/24.
//

import SwiftUI
struct SabrinaCarpenter: View {
    @State private var showActionSheet = false

    var body: some View {
        
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing: 20.0){
                Image("Sabrina_Carpenter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .onTapGesture {
                            showActionSheet = true
                        }
                
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
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Listen on"),
                message: Text("Choose a platform"),
                buttons: [
                    .default(Text("Apple Music")) {
                        openURL("https://music.apple.com/us/artist/sabrina-carpenter/390647681")
                    },
                    .default(Text("Spotify")) {
                        openURL("https://open.spotify.com/artist/74KM79TiuVKeVCqs8QtB0B?si=iVEGM1BsQLSfEf5GtwR4IA")
                    },
                    .default(Text("YouTube")) {
                        openURL("https://music.youtube.com/channel/UCz51ZodJbYUNfkdPHOjJKKw")
                    },
                    .cancel()
                ]
            )
        }
    }
    private func openURL(_ urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}
#Preview {
    SabrinaCarpenter()
}
