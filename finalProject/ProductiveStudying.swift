//
//  ProductiveStudying.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct ProductiveStudying: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("Augury- Lynx XII")
                Text("Orange Sky- Auoura")
                Text("the echoing truth- Tall Towers")
                Text("Tell A Story- BBG's")
                Text("Photographic- Skeru")
                Text("Oscillation- Mimber")
                Text("Extension- Oblivion")
                Text("Long Distances- Barkerby")
                Text("Lunar Rainbow- Louamine")
                Text("Another Day- Francis Flo")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DWZeKCadgRdKQ?si=94f768df12d84b53")!)
            }
            }
    }
}
#Preview {
    ProductiveStudying()
}
