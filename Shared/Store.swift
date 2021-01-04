//
//  Store.swift
//  Alamofire-Reachability-Demo
//
//  Created by 沈翔 on 2020/12/30.
//

import Combine

final class Store: ObservableObject {
    @Published var networkReachable: Bool = false
    @Published var networkType: String = ""
}
