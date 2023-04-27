//
//  MessageCell.swift
//  Twitter-Clone
//
//  Created by Анатолий on 28.04.2023.
//

import SwiftUI

struct MessageCell: View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack {
                Image("logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 0, content: {
                    HStack {
                        Text("Anatoly ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("@alkid")
                            .foregroundColor(.gray)
                        
                        Spacer(minLength: 0)
                        
                        Text("6/20/23")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                    
                    Text("You: How is it going?")
                        .foregroundColor(.gray)
                    
                    Spacer()
                })
            }
            .padding(.top, 2)
        })
        .frame(width: width, height: 84)
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell()
    }
}
