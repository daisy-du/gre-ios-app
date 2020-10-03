//
//  DeckView.swift
//  Daisy's GRE
//
//  Created by Yu Du on 7/28/20.
//  Copyright © 2020 daisydu. All rights reserved.
//

import SwiftUI

struct DeckView: View {
    var body: some View {
        NavigationView {
        VStack {
            ZStack {
                Rectangle().frame(height: 80)
                VStack {
                    Text("")
                    HStack {
                        Text("                                       ")
                        Text("you are signed in as: Daisy Du").font(.system(size:15)).foregroundColor(Color.white)
                    }
                    Rectangle().fill(Color.white)
                    .frame(height: 2)
                }
            }
            HStack{
                Image("menu").resizable().frame(width:30, height: 40)
                 Text("                      ")
                 Text("GRE Word List").font(.system(size:30, weight: .heavy))
            }.padding(.horizontal).padding(.vertical, 8)
            
            ScrollView {
                VStack {
                    // Hard Word List
                    HStack(spacing: 0) {
                        ZStack {
                            Rectangle().fill(Color.white).frame(width: 290, height: 55).border(Color.black, width: 3)
                            Text("Your Own Favorite Word List").font(.system(size: 20))
                        }
                        NavigationLink(destination: ContentView(index: 25)
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)) {
                            ZStack {
                                   Rectangle().fill(Color.black).frame(height: 55)
                                   Image("arrow").resizable().frame(width:55, height: 55)
                            }
                        }.buttonStyle(PlainButtonStyle())
                    }.padding(.horizontal, 30).padding(.bottom, 10)
                    
                    ForEach(0..<24) { i in
                        // One Word List
                        HStack(spacing: 0) {
                            ZStack {
                                Rectangle().fill(Color.white).frame(width: 290, height: 55).border(Color.black, width: 3)
                                Text("Most Common Word List " + String(i+1)).font(.system(size: 20))
                            }
                            NavigationLink(destination: ContentView(index: i)
                                            .navigationBarTitle("")
                                            .navigationBarHidden(true)) {
                                ZStack {
                                       Rectangle().fill(Color.black).frame(height: 55)
                                       Image("arrow").resizable().frame(width:55, height: 55)
                                }
                            }.buttonStyle(PlainButtonStyle())
                        }.padding(.horizontal, 30).padding(.bottom, 10)
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        } // Nav View
        }.frame(maxHeight: 1000, alignment: .topLeading)
    }
}

struct DeckView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView()
    }
}
