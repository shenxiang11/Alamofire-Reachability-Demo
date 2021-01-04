//
//  ContentView.swift
//  Shared
//
//  Created by 沈翔 on 2020/12/30.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var state: Store
    
    var body: some View {
        HStack {
            Image(systemName: state.networkReachable ? "wifi" : "wifi.slash")
            Text(state.networkType)
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Store())
    }
}
