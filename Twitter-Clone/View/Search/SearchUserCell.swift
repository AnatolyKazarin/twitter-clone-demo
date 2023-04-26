//
//  SearchUserCell.swift
//  Twitter-Clone
//
//  Created by Анатолий on 26.04.2023.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Anatoly")
                    .fontWeight(.heavy)
                
                Text("@alkid")
            }
            
            Spacer(minLength: 0)
        }
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
