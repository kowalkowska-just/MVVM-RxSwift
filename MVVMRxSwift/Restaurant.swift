//
//  Restaurant.swift
//  MVVMRxSwift
//
//  Created by Justyna Kowalkowska on 20/12/2020.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String, Decodable {
    case european
    case english
    case french
    case indian
    case mexican
}
