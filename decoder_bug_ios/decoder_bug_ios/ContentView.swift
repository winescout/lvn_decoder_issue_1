//
//  ContentView.swift
//  decoder_bug_ios
//
//  Created by MATT on 10/1/22.
//

import SwiftUI
import PhoenixLiveViewNative

struct ContentView: View {
    @State var coordinator = LiveViewCoordinator(URL(string: "http://localhost:4000/page")!)

    var body: some View {
        LiveView(coordinator:  coordinator)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
