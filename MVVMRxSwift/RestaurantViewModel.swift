//
//  RestaurantViewModel.swift
//  MVVMRxSwift
//
//  Created by Justyna Kowalkowska on 20/12/2020.
//

import Foundation

struct RestaurantViewModel {
    
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }

    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
