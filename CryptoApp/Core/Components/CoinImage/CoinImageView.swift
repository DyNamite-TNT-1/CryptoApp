//
//  CoinImageView.swift
//  CryptoApp
//
//  Created by hanbiro - ANHDUC on 10/24/23.
//

import SwiftUI

struct CoinImageView: View {
    @StateObject var coinImageVM: CoinImageViewModel
    
    init(coin: CoinModel) {
        _coinImageVM = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = coinImageVM.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if coinImageVM.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

struct CoinImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoinImageView(coin: dev.coin)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
