//
//  SearchView.swift
//  Twitter-Clone
//
//  Created by Анатолий on 23.04.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State var text = ""
    @State var isEditing = false
    
    var body: some View {
        VStack {
            
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            if !isEditing {
                List(0..<9) {i in
                    SearchCell(tag: "helo", tweets: String(i))
                }
            } else {
                List(0..<9) {i in
                    SearchUserCell()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
