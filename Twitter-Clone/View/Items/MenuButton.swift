//
//  MenuItem.swift
//  Twitter-Clone
//
//  Created by Анатолий on 1.05.2023.
//

import SwiftUI

struct MenuButton: View {
    
    var item: MenuButtonItem

    var body: some View {
        HStack(spacing: 15, content: {
            Image(systemName: item.icon)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
            
            Text(item.title)
                .foregroundColor(.black)
            
            Spacer(minLength: 0)
        })
        .padding(.vertical, 12)
    }
}

struct MenuButtonItem: Identifiable {
    let icon: String
    let title: String
    var id: String { title }
}
