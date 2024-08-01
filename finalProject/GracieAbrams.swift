//
//  GracieAbrams.swift
//  finalProject
//
//  Created by Paris-Ashley Tumba on 8/1/24.
//

import SwiftUI
struct GracieAbrams: View {
    @State private var showActionSheet = false

    var body: some View {
        
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing: 20.0){
                Image("Gracie_Abrams")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .onTapGesture {
                            showActionSheet = true
                        }
                
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
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Listen on"),
                message: Text("Choose a platform"),
                buttons: [
                    .default(Text("Apple Music")) {
                        openURL("https://music.apple.com/us/artist/gracie-abrams/1450554836")
                    },
                    .default(Text("Spotify")) {
                        openURL("https://open.spotify.com/artist/4tuJ0bMpJh08umKkEXKUI5?autoplay=true")
                    },
                    .default(Text("YouTube")) {
                        openURL("https://music.youtube.com/channel/UCw-0GSqznYHfyfDBBe6a46A?feature=gws_kp_artist&feature=gws_kp_artist")
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
    GracieAbrams()
}
