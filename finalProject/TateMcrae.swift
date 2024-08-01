//
//  TateMcrae.swift
//  finalProject
//
//  Created by Paris-Ashley Tumba on 8/1/24.
//

import SwiftUI
struct TateMcrae: View {
    @State private var showActionSheet = false

    var body: some View {
        
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing: 20.0){
                Image("TateMcrae")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .onTapGesture {
                            showActionSheet = true
                        }
                
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
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Listen on"),
                message: Text("Choose a platform"),
                buttons: [
                    .default(Text("Apple Music")) {
                        openURL("https://music.apple.com/us/artist/tate-mcrae/1446365464")
                    },
                    .default(Text("Spotify")) {
                        openURL("https://open.spotify.com/artist/45dkTj5sMRSjrmBSBeiHym?autoplay=true")
                    },
                    .default(Text("YouTube")) {
                        openURL("https://music.youtube.com/channel/UCz86IA7ooUetFnUGa_YlsVw?feature=gws_kp_artist&feature=gws_kp_artist")
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
    TateMcrae()
}
