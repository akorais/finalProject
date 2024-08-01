//
//  ContentView.swift
//  finalProject
//
//  Created by Amal Koraishy on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Welcome!")
                        .font(.system(.largeTitle, weight: .bold))
                        .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .clipped()
                        .padding(.leading)
                        .padding(.bottom, 8)
                }
                .frame(maxWidth: .infinity)
                .clipped()
                .padding(.top, 98)
                .padding(.bottom, 150)
            }
            
            .overlay(alignment: .bottom) {
                // Tab Bar
                VStack(spacing: 4) {
                    Divider()
                    HStack(spacing: 10) {
                        NavigationLink(destination: QuizMainPage()) {
                            VStack(spacing: 4) {
                                Image(systemName: "square.grid.2x2.fill")
                                    .imageScale(.large)
                                    .frame(height: 26)
                                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                                    .clipped()
                                Text("Quiz")
                                    .font(.caption2)
                                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                            }
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .frame(height: 45)
                            .clipped()
                            .foregroundStyle(.secondary)
                        }
                        
                        NavigationLink(destination: SwipeView()) {
                            VStack(spacing: 4) {
                                Image(systemName: "dot.radiowaves.left.and.right")
                                    .imageScale(.large)
                                    .frame(height: 26)
                                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                                    .clipped()
                                Text("Recommender")
                                    .font(.caption2)
                                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                            }
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .frame(height: 45)
                            .clipped()
                            .foregroundStyle(.secondary)
                        }
                        
                        NavigationLink(destination: Disc()) {
                            VStack(spacing: 4) {
                                Image(systemName: "square.stack.fill")
                                    .imageScale(.large)
                                    .frame(height: 26)
                                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                                    .clipped()
                                Text("Discover")
                                    .font(.caption2)
                                    .foregroundColor(Color(red: 184/255, green: 64/255, blue: 108/255))
                            }
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .frame(height: 45)
                            .clipped()
                            .foregroundStyle(.secondary)
                        }
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 5)
                }
                .frame(height: 84, alignment: .top)
                .clipped()
                .background {
                    Rectangle()
                        .fill(.clear)
                        .background(Material.bar)
                }
            }
            
            
        }
                    }
                }
   

#Preview {
    ContentView()
}
