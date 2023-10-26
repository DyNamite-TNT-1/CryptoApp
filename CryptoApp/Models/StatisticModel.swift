//
//  StatisticModel.swift
//  CryptoApp
//
//  Created by hanbiro on 10/26/23.
//

import Foundation

struct StatisticModel: Identifiable {
    let id : String
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(id: String = UUID().uuidString, title: String, value: String, percentageChange: Double? = nil) {
        self.id = id
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}
