//
//  Feed.swift
//  Twitter-Clone
//
//  Created by Анатолий on 23.04.2023.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 18, content: {
                
                TweetCellView(tweet: sample, tweetImage: "logo")
                
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: sample)
                    Divider()
                }
            })
            .padding()
            .zIndex(0)
        })
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
