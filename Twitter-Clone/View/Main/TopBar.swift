//
//  TopBar.swift
//  Twitter-Clone
//
//  Created by Анатолий on 30.04.2023.
//

import SwiftUI

struct TopBar: View {
    
    @Binding var x: CGFloat
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    withAnimation {
                        x = 0
                    }
                }, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color("bg"))
                })
                
                Spacer(minLength: 0)
                
                Image(systemName: "bird.fill")
                    .foregroundColor(Color("bg"))
                
                Spacer(minLength: 0)
            }
            .padding()
            
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        .background(Color.white)
    }
}
