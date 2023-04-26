//
//  Extensions.swift
//  Twitter-Clone
//
//  Created by Анатолий on 26.04.2023.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
