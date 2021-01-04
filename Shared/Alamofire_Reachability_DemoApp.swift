//
//  Alamofire_Reachability_DemoApp.swift
//  Shared
//
//  Created by 沈翔 on 2020/12/30.
//

import SwiftUI
import Combine

var store = Store()

@main
struct Alamofire_Reachability_DemoApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .onAppear(perform: {
                    NetworkReachability.shared.startNewtworkMonitoring()
                })
                .onDisappear(perform: {
                    NetworkReachability.shared.stopNetworkMonitoring()
                })
                .frame(minWidth: 200, minHeight: 200)
        }
    }
}
