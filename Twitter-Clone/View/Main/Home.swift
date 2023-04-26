//
//  Home.swift
//  Twitter-Clone
//
//  Created by Анатолий on 23.04.2023.
//

import SwiftUI

struct Home: View {
    
    @State var selectedIndex = 0
    @State var createTweet = false
    @State var text = ""
    
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    Feed().onTapGesture {
                        self.selectedIndex = 0
                    }
                    .tabItem{
                        Image(systemName: "house").renderingMode(.template).foregroundColor(Color(selectedIndex == 0 ? "bg" : "grey"))
                    }
                    .tag(0)
                    
                    SearchView().onTapGesture {
                        self.selectedIndex = 1
                    }
                    .tabItem{
                        Image(systemName: "magnifyingglass").renderingMode(.template).foregroundColor(selectedIndex == 1 ? Color("bg") : .white)
                    }
                    .tag(1)
                    
                    NotificationsView().onTapGesture {
                        self.selectedIndex = 2
                    }
                    .tabItem{
                        Image(systemName: "bell.badge").renderingMode(.template).foregroundColor(selectedIndex == 2 ? Color("bg") : .white)
                    }
                    .tag(2)
                    
                    MessagesView().onTapGesture {
                        self.selectedIndex = 3
                    }
                    .tabItem{
                        Image(systemName: "message").renderingMode(.template).foregroundColor(selectedIndex == 3 ? Color("bg") : .white)
                    }
                    .tag(3)
                }
                
                VStack {
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            self.createTweet.toggle()
                        }, label: {
                            Image(systemName: "pencil")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                    }.padding()
                }.padding(.bottom, 65)
            }
            .sheet(isPresented: $createTweet, content: {
                CreateTweetView(text: text)
            })
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
