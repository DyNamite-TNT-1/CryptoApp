//
//  XMarkButton.swift
//  CryptoApp
//
//  Created by hanbiro on 10/27/23.
//

import SwiftUI

struct XMarkButton: View {
    
    var onClick: () -> ()
    
    var body: some View {
        Button { 
            onClick()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton(onClick: {})
    }
}
