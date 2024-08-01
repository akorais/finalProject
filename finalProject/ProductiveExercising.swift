//
//  ProductiveExercising.swift
//  finalProject
//
//  Created by Ara Magine on 7/31/24.
//

import SwiftUI
struct ProductiveExercising: View {
    var body: some View {
        VStack {
            Text("You may enjoy...")
                .font(.title)
                .multilineTextAlignment(.leading)
            
                //Text("Click here for a playlist!")
            VStack {
                    
                Text("HOT TO GO!- Chappell Roan")
                Text("exes- Tate McRae")
                Text("Rush- Troy Sivan")
                Text("360- Charli xcx")
                Text("Beauty And A Beat- Justic Bieber, Nicki Minaj")
                Text("Don't Stop The Music- Rihanna")
                Text("Not My Fault- Renee Rapp, Megan Thee Stallion")
                Text("Timber- Pitbull, Kesha")
                Text("Baby Don't Hurt Me- David Guetta, Anne-Marie, Coi Leray ")
                Text("Bang Bang- Jessie J, Ariana Grande, Nicki Minaj")
                
                Link("Click here for a playlist!",destination: URL (string: "https://open.spotify.com/playlist/37i9dQZF1DX5gQonLbZD9s?si=f0f5b029eae14e73")!)
                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
            }
        }
    }
}
#Preview {
    ProductiveExercising()
}
