//
//  SlideMenu.swift
//  Twitter-Clone
//
//  Created by Анатолий on 30.04.2023.
//

import SwiftUI

struct SlideMenu: View {
    
    @State var show = false
    @State var width = UIScreen.main.bounds.width
    
    var menuButtons: [MenuButtonItem] = [
        MenuButtonItem(icon: "person", title: "Profile"),
        MenuButtonItem(icon: "doc", title: "Lists"),
        MenuButtonItem(icon: "message", title: "Topics"),
        MenuButtonItem(icon: "bookmark", title: "Bookmarks"),
        MenuButtonItem(icon: "rays", title: "Moments")]
    
    var edges = UIApplication
        .shared
        .connectedScenes
        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
        .first { $0.isKeyWindow }?.safeAreaInsets
    
    var body: some View {
        VStack {
            HStack(spacing: 0, content: {
                VStack(alignment: .leading, content: {
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    HStack(alignment: .top, spacing: 12, content: {
                        VStack(alignment: .leading, spacing: 12, content: {
                            Text("Anatoly Kazarin")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            Text("@alkid")
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 20, content: {
                                FollowView(count: 8, title: "Following")
                                FollowView(count: 16, title: "Followers")
                            })
                            .padding(.top, 10)
                            
                            Divider()
                                .padding(.top, 10)
                        })
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            withAnimation{
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName: show ? "chevron.up" : "chevron.down")
                                .foregroundColor(Color("bg"))
                        })
                    })
                    
                    VStack(alignment: .leading, content: {
                        ForEach(menuButtons) {item in
                            MenuButton(item: item)
                        }
                        
                        Divider()
                            .padding(.top)
                        
                        Button(action: {
                            
                        }, label: {
                            MenuButton(item: MenuButtonItem(icon: "rectangle.portrait.and.arrow.right", title: "Twitter Ads"))
                        })
                        
                        Divider()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Settings and privacy")
                                .foregroundColor(.black)
                                .padding(.top, 20)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Help center")
                                .foregroundColor(.black)
                                .padding(.top, 20)
                        })
                        
                        Spacer(minLength: 0)
                        
                        Divider()
                            .padding(.top)
                        
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "lightbulb")
                                    .resizable()
                                    .frame(width: 26, height: 36)
                                    .foregroundColor(Color("bg"))
                            })
                            
                            Spacer(minLength: 0)
                            
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "qrcode.viewfinder")
                                    .resizable()
                                    .frame(width: 36, height: 36)
                                    .foregroundColor(Color("bg"))
                            })
                        }
                    })
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    VStack(alignment: .leading, content: {
                        Button(action: {
                            
                        }, label: {
                            Text("Create new account")
                                .foregroundColor(Color("bg"))
                        })
                        
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Add an existing account")
                                .foregroundColor(Color("bg"))
                        })
                        
                        Spacer(minLength: 0)
                    })
                    .opacity(show ? 0 : 1)
                    .frame(height: show ? 0 : nil)
                })
                .padding(.horizontal, 20)
                .padding(.top, edges!.top == 0 ? 15 : edges?.top)
                .padding(.bottom, edges!.bottom == 0 ? 15 : edges?.bottom)
                .frame(width: width - 90)
                .background(Color.white)
                .ignoresSafeArea(.all, edges: .vertical)
                
                Spacer(minLength: 0)
            })
        }
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu()
    }
}
 
