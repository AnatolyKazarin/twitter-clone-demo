//
//  FollowView.swift
//  Twitter-Clone
//
//  Created by Анатолий on 30.04.2023.
//

import SwiftUI

struct FollowView: View {
    
    @State var count: Int
    @State var title: String
    var body: some View {
        HStack {
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(title)
                .foregroundColor(.gray)
        }
    }
}

//struct FollowView_Previews: PreviewProvider {
//    static var previews: some View {
//        FollowView()
//    }
//}
