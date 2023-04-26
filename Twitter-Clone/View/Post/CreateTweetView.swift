//
//  CreateTweetView.swift
//  Twitter-Clone
//
//  Created by Анатолий on 23.04.2023.
//

import SwiftUI

struct CreateTweetView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Text("Cancel")
                })
                Spacer()
                Button(action: {}, label: {
                    Text("Tweet").padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            
            MultilineTextField(text: $text)
        }.padding()
    }
}

struct CreateTweetView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTweetView()
    }
}
