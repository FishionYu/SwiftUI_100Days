//
//  ContentView.swift
//  PodCast
//
//  Created by SarathYu on 2021/3/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            NowListenToIView()
                .tabItem {
                    Image(systemName: "play.circle.fill")
                    Text("现在播放")
            }
            NowListenToIView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("浏览")
            }
            NowListenToIView()
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text("资料库")
            }
            NowListenToIView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("搜索")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
