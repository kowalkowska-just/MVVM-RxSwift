//
//  RestaurantsListViewModel.swift
//  MVVMRxSwift
//
//  Created by Justyna Kowalkowska on 20/12/2020.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        restaurantService.fetchRestaurants().map { $0.map { RestaurantViewModel(restaurant: $0) } }
    }
}
