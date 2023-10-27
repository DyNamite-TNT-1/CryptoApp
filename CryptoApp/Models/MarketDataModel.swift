//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by hanbiro - ANHDUC on 10/26/23.
//

import Foundation

//JSON DATA
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON RESPONSE:
 {
   "data": {
     "active_cryptocurrencies": 10556,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 901,
     "total_market_cap": {
       "btc": 38242309.555080675,
       "eth": 715551439.607296,
       "ltc": 18901624784.72299,
       "bch": 5210457482.999861,
       "bnb": 5837319692.785148,
       "eos": 2157478999584.8347,
       "xrp": 2378068314535.356,
       "xlm": 11452630578635.074,
       "link": 118291672044.85774,
       "dot": 302291431989.5801,
       "yfi": 222417428.4940356,
       "usd": 1321921972455.482,
       "aed": 4855412795219.104,
       "ars": 462701438196555,
       "aud": 2094680543737.7275,
       "bdt": 145939950456973.9,
       "bhd": 498405563196.86194,
       "bmd": 1321921972455.482,
       "brl": 6604587880704.038,
       "cad": 1824022307565.358,
       "chf": 1187545960111.436,
       "clp": 1222090425095643.5,
       "cny": 9675146916401.676,
       "czk": 30967608511136.582,
       "dkk": 9351650137068.277,
       "eur": 1252998282733.6243,
       "gbp": 1093390745701.3228,
       "hkd": 10338018079879.602,
       "huf": 481038318884911.2,
       "idr": 21029746709701640,
       "ils": 5378536977378.929,
       "inr": 109961943052801.75,
       "jpy": 198804109821974.28,
       "krw": 1794806249633488,
       "kwd": 408857246860.75476,
       "lkr": 432528985580677.6,
       "mmk": 2779815873994693.5,
       "mxn": 24205101187759.086,
       "myr": 6328437058736.143,
       "ngn": 1045040011307657.8,
       "nok": 14809835557131.584,
       "nzd": 2278028477473.359,
       "php": 75338321380884.55,
       "pkr": 366004758732529,
       "pln": 5602785176942.333,
       "rub": 123725275114673.12,
       "sar": 4958956299477.6,
       "sek": 14775189304155.508,
       "sgd": 1812997478315.0789,
       "thb": 47925399389417.695,
       "try": 37210385026057.6,
       "twd": 42910776955680.31,
       "uah": 48355683669530,
       "vef": 132364047101.96721,
       "vnd": 32531614435121380,
       "zar": 25346995894473.73,
       "xdr": 1009342946692.6014,
       "xag": 57343970504.41976,
       "xau": 664596271.6519935,
       "bits": 38242309555080.67,
       "sats": 3824230955508067.5
     },
     "total_volume": {
       "btc": 5521720.250091211,
       "eth": 103316847.75394547,
       "ltc": 2729162687.810649,
       "bch": 752326125.9804662,
       "bnb": 842837337.2032855,
       "eos": 311513494340.4957,
       "xrp": 343363884693.14166,
       "xlm": 1653619326829.1145,
       "link": 17079865953.348577,
       "dot": 43647173532.80713,
       "yfi": 32114347.51658632,
       "usd": 190869312268.7776,
       "aed": 701062029616.6559,
       "ars": 66808410129006.26,
       "aud": 302446167880.3614,
       "bdt": 21071938099735.434,
       "bhd": 71963647674.00935,
       "bmd": 190869312268.7776,
       "brl": 953621448826.577,
       "cad": 263366439670.5783,
       "chf": 171467064938.03165,
       "clp": 176454861806239.44,
       "cny": 1396972496495.1838,
       "czk": 4471342683070.834,
       "dkk": 1350263531004.7039,
       "eur": 180917577196.39563,
       "gbp": 157872207302.37582,
       "hkd": 1492682958785.7988,
       "huf": 69456030698955.625,
       "idr": 3036437380802002.5,
       "ils": 776594742560.7819,
       "inr": 15877155296269.635,
       "jpy": 28704874045963.895,
       "krw": 259147999398871.16,
       "kwd": 59033969591.61004,
       "lkr": 62451878200304.44,
       "mmk": 401371302662923.5,
       "mxn": 3494919604462.007,
       "myr": 913748658624.321,
       "ngn": 150890954540333.56,
       "nok": 2138358531368.3025,
       "nzd": 328919359753.41644,
       "php": 10877929173643.297,
       "pkr": 52846596124439.8,
       "pln": 808973430955.433,
       "rub": 17864411563972.434,
       "sar": 716012441108.0453,
       "sek": 2133356037563.0518,
       "sgd": 261774589606.25668,
       "thb": 6919839606473.224,
       "try": 5372723010260.137,
       "twd": 6195789658625.586,
       "uah": 6981967376747.4,
       "vef": 19111744237.47267,
       "vnd": 4697165947465757,
       "zar": 3659795188570.1465,
       "xdr": 145736736428.3267,
       "xag": 8279765705.542251,
       "xau": 95959546.74312794,
       "bits": 5521720250091.211,
       "sats": 552172025009121.1
     },
     "market_cap_percentage": {
       "btc": 51.05416707415694,
       "eth": 16.806494388209465,
       "usdt": 6.368549953284605,
       "bnb": 2.634871405431479,
       "xrp": 2.2473725659788855,
       "usdc": 1.8979869376709528,
       "steth": 1.2301288653161246,
       "sol": 1.034722480537877,
       "ada": 0.7783780332686794,
       "doge": 0.7677738883821833
     },
     "market_cap_change_percentage_24h_usd": 2.7817157837467494,
     "updated_at": 1698308313
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double?
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {
            $0.key == "usd"
        }) {
            return "$" + item.value.formattedWithAbbreviation()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {
            $0.key == "usd"
        }) {
            return "$" + item.value.formattedWithAbbreviation()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {
            $0.key == "btc"
        }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
