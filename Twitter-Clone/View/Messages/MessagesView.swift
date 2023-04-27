//
//  MessagesView.swift
//  Twitter-Clone
//
//  Created by Анатолий on 23.04.2023.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach (0..<9) {_ in
                    MessageCell()
                }
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
