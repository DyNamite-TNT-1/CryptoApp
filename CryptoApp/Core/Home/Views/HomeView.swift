//
//  HomeView.swift
//  CryptoApp
//
//  Created by hanbiro - ANHDUC on 10/17/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var homeViewModel: HomeViewModel
    @State var showPortfolio: Bool = false // animate right
    @State var showPortfolioView: Bool = false // new sheet
    private var screenWidth: Double = 0
    
    init() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            self.screenWidth = windowScene.screen.bounds.size.width
        }
    }
    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
                .sheet(isPresented: $showPortfolioView) {
                    PortfolioView()
                        .environmentObject(homeViewModel)
                }
            
            VStack {
                homeHeader
                
                HomeStatisticView(showPortfolio: $showPortfolio)
                
                SearchBarView(searchText: $homeViewModel.searchText)
                
                columnTitles(screenWidth: self.screenWidth)
                
                if !showPortfolio {
                    allCoinsList
                        .transition(.move(edge: .leading))
                } else {
                    portfolioCoinsList
                        .transition(.move(edge: .trailing))
                }
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeViewModel)
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: UUID()) //none animation
                .onTapGesture {
                    if showPortfolio {
                        showPortfolioView.toggle()
                    }
                }
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none, value: UUID()) //none animation
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        self.showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
    
    private var allCoinsList: some View {
        List {
            ForEach(homeViewModel.allCoins) { coin in
                CoinRowView(coin: coin, showHoldingColumn: false)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var portfolioCoinsList: some View {
        List {
            ForEach(homeViewModel.portfolioCoins) { coin in
                CoinRowView(coin: coin, showHoldingColumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private func columnTitles(screenWidth: Double) -> some View {
            return HStack {
                Text("Coin")
                Spacer()
                if showPortfolio {
                    Text("Holdings")
                }
                Text("Price")
                    .frame(width: screenWidth * 0.3, height: 10, alignment: .trailing)
            }
            .font(.caption)
            .foregroundColor(Color.theme.secondaryText)
            .padding(.horizontal)
    }
}
