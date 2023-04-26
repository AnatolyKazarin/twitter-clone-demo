//
//  SearchCell.swift
//  Twitter-Clone
//
//  Created by Анатолий on 25.04.2023.
//

import SwiftUI

struct SearchCell: View {
    
    var tag = ""
    var tweets = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text("title")
                .fontWeight(.heavy)
            Text(tweets + " Tweets").fontWeight(.light)
        })
    }
}

struct SearchCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchCell()
    }
}
