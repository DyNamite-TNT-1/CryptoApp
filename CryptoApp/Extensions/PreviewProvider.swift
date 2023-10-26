//
//  PreviewProvider.swift
//  CryptoApp
//
//  Created by hanbiro - ANHDUC on 10/17/23.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() {}
    
    let homeViewModel = HomeViewModel()
    
    let statistic1 = StatisticModel(title: "Market Cap", value: "$12.5Bn", percentageChange: 25.34)
    let statistic2 = StatisticModel(title: "Total Volumn", value: "$1.23Tr")
    let statistic3 = StatisticModel(title: "Portfolio Value", value: "$50.4k", percentageChange:  -12.34)
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
        currentPrice: 28445,
        marketCap: 555009481705,
        marketCapRank: 1,
        fullyDilutedValuation: 597207724503,
        totalVolume: 16024632287,
        high24H: 29483,
        low24H: 27656,
        priceChange24H: 686.26,
        priceChangePercentage24H: 2.47219,
        marketCapChange24H: 10623663302,
        marketCapChangePercentage24H: 1.9515,
        circulatingSupply: 19516156,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 69045,
        athChangePercentage: -58.77075,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: 41880.627,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2023-10-17T09:06:37.727Z",
        sparklineIn7D: SparklineIn7D(price: [
            27611.436747140113,
            27710.146587078358,
            27636.303091005208,
            27598.071725636022,
            27609.302251256828,
            27660.99451194319,
            27656.898901443343,
            27677.881446981675,
            27661.691949007287,
            27633.558104025575,
            27555.45416110842,
            27459.682235694843,
            27388.105989378175,
            27461.663275495994,
            27435.691802347716,
            27476.34616279916,
            27382.816290914565,
            27303.143762531436,
            27393.220734339226,
            27398.76882334203,
            27452.602014430508,
            27453.037553654438,
            27392.247702732497,
            27461.472926157647,
            27433.905574327717,
            27151.18796617716,
            27023.346113858555,
            27133.927296610043,
            27099.309393041272,
            27070.961853932353,
            27050.58956036679,
            27091.825435691575,
            27246.92567767454,
            27267.090378202716,
            27200.90759681216,
            27167.994395067362,
            27153.939800999113,
            27110.16947195278,
            26836.396715304458,
            26655.469046498078,
            26634.191751329097,
            26697.636089323183,
            26779.7722099829,
            26696.835596364646,
            26721.28918900755,
            26782.107677394106,
            26878.332841551837,
            26803.037160298893,
            26778.41225232315,
            26900.51950068074,
            26838.024608426476,
            26839.239935782385,
            26852.39455563419,
            26872.584515514718,
            26801.395089802365,
            26789.804116505198,
            26738.114236039168,
            26753.93158518172,
            26856.493568419337,
            26811.482197063313,
            26732.30125492664,
            26670.119454928456,
            26666.25252910143,
            26678.015256065097,
            26621.40736495772,
            26648.904590943523,
            26707.412827433964,
            26727.794166278334,
            26727.676890464933,
            26741.573640176197,
            26729.137205815106,
            26803.279034641575,
            26806.172519943186,
            26798.803183241133,
            26769.580386210713,
            26780.62481547189,
            26793.96327210325,
            26811.07812647764,
            26788.587712729422,
            26859.62635883147,
            26792.942475018375,
            26738.35326046054,
            26760.085056424694,
            26811.89473794595,
            26923.440559562914,
            26835.24913498781,
            26760.35563431231,
            26696.78538766366,
            26788.503398994435,
            26756.376599088653,
            26740.29228574709,
            26768.411413861042,
            26754.414154641276,
            27013.47907381674,
            26811.460759785718,
            26860.56354897653,
            26876.281544883346,
            26920.90263631723,
            26902.206738720404,
            26922.427898296537,
            26892.973043430076,
            26891.839763725242,
            26867.914796414443,
            26860.89980401792,
            26853.610667323977,
            26872.279946571074,
            26879.781395753915,
            26863.105183446256,
            26878.620899781068,
            26891.710873445507,
            26882.856141477598,
            26923.38432031609,
            26920.444173027914,
            26893.23609061671,
            26872.795947877556,
            26868.540820923547,
            26846.82156628211,
            26825.747941177448,
            26851.366155439206,
            26863.183569079916,
            26834.38567433503,
            26892.620438460435,
            26876.507249640086,
            26891.488924878282,
            26881.098705508528,
            26880.98681977488,
            26877.87771868917,
            26876.675736492372,
            26905.878377811427,
            26898.723489670752,
            26901.449840082005,
            26851.006567221477,
            26842.40654416286,
            26846.58253133974,
            26886.155337924767,
            26899.475848237824,
            26923.75379735683,
            26965.59192529843,
            27056.009940986372,
            27009.167023253063,
            27196.298592542582,
            27180.160170151594,
            27128.978144491553,
            27150.29700140705,
            27160.777405985646,
            27244.393820215242,
            27186.544992626878,
            27236.015765106335,
            27258.016452753076,
            27917.095103383443,
            27799.579745713032,
            27867.280989651696,
            27829.804423321286,
            27763.785884842495,
            27789.59185533589,
            27749.459401966204,
            27855.267855609698,
            28169.32561144615,
            28194.511098520587,
            28061.68165797989,
            28080.880495599165,
            28247.906159495586,
            28535.955587851917,
            28478.766995641403,
            28433.01073772692,
            28418.587345885,
            28515.420222673423,
            28525.033408335068,
            28308.769868016458
        ]),
        priceChangePercentage24HInCurrency: 2.47219046367532,
        currentHoldings: 1.5
    )
}
