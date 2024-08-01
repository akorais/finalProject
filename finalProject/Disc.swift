//
//  Disc.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct Disc: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Discover")
                    .font(.system(.largeTitle, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .padding(.leading)
                    .padding(.bottom, 8)
                
                VStack(alignment: .leading) {
                    Text("Rising Artists")
                        .padding(.leading)
                        .font(.system(.title3, weight: .bold))
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            
                            NavigationLink(destination: SabrinaCarpenter()) {
                                VStack(alignment: .leading) {
                                    Image("Sabrina_Carpenter")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 250, height: 141)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                    Text("Sabrina Carpenter")
                                        .font(.system(.headline, weight: .medium))
                                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))

                                }
                            }
                                .frame(width: 250)
                                .clipped()
                                //break
                            NavigationLink(destination: TateMcrae()) {
                                VStack(alignment: .leading) {
                                    Image("Tate_Mcrae")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 250, height: 141)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                    Text("Tate McRae ")
                                        .font(.system(.headline, weight: .medium))
                                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))

                                }
                            }
                            .frame(width: 250)
                            .clipped()
                            //break
                            
                            NavigationLink(destination: GracieAbrams()) {
                                VStack(alignment: .leading) {
                                    Image("Gracie_Abrams")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 250, height: 141)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                    Text("Gracie Abrams ")
                                        .font(.system(.headline, weight: .medium))
                                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))

                                }
                            }
                            .frame(width: 250)
                            .clipped()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
                .padding(.vertical)
                .padding(.vertical)

                
                //2nd bar
                VStack(alignment: .leading) {
                    Text("Underrated Artists")
                        .padding(.leading)
                        .font(.system(.title3, weight: .bold))
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                          
                                VStack(alignment: .leading) {
                                    Image("mkgee")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 250, height: 141)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                    Text("Mk.gee")
                                        .font(.system(.headline, weight: .medium))
                                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))

                                }
                                .frame(width: 250)
                                .clipped()
                            //break
                            VStack(alignment: .leading) {
                                Image("lenker")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 250, height: 141)
                                    .clipped()
                                    .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                Text("Adrienne Lenker")
                                    .font(.system(.headline, weight: .medium))
                                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))

                            }
                            .frame(width: 250)
                            .clipped()
                            
                            VStack(alignment: .leading) {
                                Image("deanblunt")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 250, height: 141)
                                    .clipped()
                                    .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 3)
                                Text("Dean Blunt")
                                    .font(.system(.headline, weight: .medium))
                                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))

                            }
                            .frame(width: 250)
                            .clipped()
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .clipped()
            .padding(.top, 98)
            .padding(.bottom, 150)
        }
    }
}

#Preview {
    Disc()
}
