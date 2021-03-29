//
//  NowListenToIView.swift
//  PodCast
//
//  Created by SarathYu on 2021/3/29.
//

import SwiftUI

struct NowListenToIView: View {
    var body: some View {
        ScrollView {
            HStack {
                Text("现在就听")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Image("profile")
                    .imageHeadPortrait()
            }
            .padding()
        }
    }
}

struct NowListenToIView_Previews: PreviewProvider {
    static var previews: some View {
        NowListenToIView()
    }
}
