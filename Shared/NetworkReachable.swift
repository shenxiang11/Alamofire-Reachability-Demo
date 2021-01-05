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
    
    lazy var reachabilityManager = NetworkReachabilityManager(host:  "www.taobao.com")
    
    func startNewtworkMonitoring() {
        reachabilityManager?.startListening { status in
            switch status {
            case .unknown:
                store.networkReachable = false
                store.networkType = "未知"
            case .notReachable:
                store.networkReachable = false
                store.networkType = "无网络"
            case .reachable(.cellular):
                store.networkReachable = true
                store.networkType = "蜂窝网络"
            case .reachable(.ethernetOrWiFi):
                store.networkReachable = true
                store.networkType = "以太网或WiFi"
            }
        }
    }
    
    func stopNetworkMonitoring() {
        reachabilityManager?.stopListening()
    }

}
