//
//  ContentView.swift
//  PodCast
//
//  Created by SarathYu on 2021/3/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: NowListenToIView()) {
                Text("open")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
