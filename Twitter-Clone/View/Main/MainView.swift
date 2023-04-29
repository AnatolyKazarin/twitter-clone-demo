//
//  MainView.swift
//  Twitter-Clone
//
//  Created by Анатолий on 30.04.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            TopBar()
            Home()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
