//
//  NetworkReachability.swift
//  Alamofire-Reachability-Demo
//
//  Created by 沈翔 on 2020/12/30.
//

import SwiftUI
import Alamofire

class NetworkReachability {
    static let shared = NetworkReachability()
    
    func onNotReachable() {
        store.networkReachable = false
    }
    
    func onReachable() {
        store.networkReachable = true
    }
    
    lazy var reachabilityManager = NetworkReachabilityManager(host:  "www.taobao.com")
    
    func startNewtworkMonitoring() {
        reachabilityManager?.startListening { status in
            switch status {
            case .unknown:
                print("未知的网络状态")
            case .notReachable:
                self.onNotReachable()
            case .reachable(_):
                self.onReachable()
            }
        }
    }

}
