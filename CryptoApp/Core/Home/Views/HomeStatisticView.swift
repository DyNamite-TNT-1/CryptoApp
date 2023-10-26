//
//  HomeStatisticView.swift
//  CryptoApp
//
//  Created by hanbiro on 10/26/23.
//

import SwiftUI

struct HomeStatisticView: View {
    
    @EnvironmentObject private var homeViewModel: HomeViewModel
    @Binding var showPortfolio: Bool
    private var screenWidth: Double = 0
    
    init(showPortfolio: Binding<Bool>) {
        self._showPortfolio = showPortfolio
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            self.screenWidth = windowScene.screen.bounds.size.width
        }
    }
    
    var body: some View {
        HStack {
            ForEach(homeViewModel.statistics) { statistic in
                StatisticView(statistic: statistic)
                    .frame(width: screenWidth / 3)
            }
        }
        .frame(width: screenWidth,
               alignment: showPortfolio ? .trailing : .leading)
    }
}

struct HomeStatisticView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatisticView(showPortfolio: .constant(false))
            .environmentObject(dev.homeViewModel)
    }
}
