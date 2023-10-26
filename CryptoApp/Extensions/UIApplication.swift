//
//  UIApplication.swift
//  CryptoApp
//
//  Created by hanbiro - ANHDUC on 10/24/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditting() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
