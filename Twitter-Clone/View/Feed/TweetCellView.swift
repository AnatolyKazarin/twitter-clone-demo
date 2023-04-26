//
//  TweetCellView.swift
//  Twitter-Clone
//
//  Created by Анатолий on 23.04.2023.
//

import SwiftUI

struct TweetCellView: View {
    
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10, content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10, content: {
                    Text("Anatoly")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    +
                    Text("@alkid")
                        .foregroundColor(.gray)
                    
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImage {
                        GeometryReader {proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }
                })
            
            })
            
            //Cell Bottom
            
            HStack (spacing: 50, content: {
                Button(action: {
                
                }, label: {
                    Image(systemName: "message.fill")
                        .resizable()
                        .frame(width: 16, height: 16)
                }).foregroundColor(.gray)
                
                Button(action: {
                }, label: {
                    Image(systemName: "arrow.clockwise")
                        .resizable()
                        .frame(width: 16, height: 16)
                }).foregroundColor(.gray)
                
                Button(action: {
                
                }, label: {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 16, height: 16)
                }).foregroundColor(.gray)
                
                Button(action: {
                
                }, label: {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 16, height: 16)
                }).foregroundColor(.gray)
            })
            .padding(.top, 4)
        }
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: sample)
    }
}


var sample = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio porttitor, malesuada nulla ut, maximus nisl. Morbi tempor, dui eget dignissim efficitur, nunc leo finibus arcu, ac sodales nulla dolor vel tortor. Aenean scelerisque id dui sed rutrum. Donec ut consectetur nisi. Vestibulum eu mauris purus. Phasellus interdum feugiat mi non tristique. Cras ex nunc, ultricies eu ullamcorper vel, auctor vitae ex. Vestibulum nec posuere lacus. Integer maximus nulla sit amet lectus faucibus facilisis. Nulla vulputate ex libero, quis mattis orci pretium ac. Aenean mauris nulla, venenatis vitae convallis et, efficitur quis velit. Nullam est ligula, elementum vel venenatis in, finibus id lacus."
