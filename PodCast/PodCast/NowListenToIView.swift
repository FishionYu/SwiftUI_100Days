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
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Image("profile")
                    .imageHeadPortrait()
            }
            .padding()
            VStack {
                HStack {
                    Text("待播清单")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    NavigationLink( destination: ComponentLibrary()) {
                        Text("查看更多")
                            .foregroundColor(.purple)
                    }
                }.padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        PodCastCover()
                        PodCastCover()
                        PodCastCover()
                    }
                }

            }
        }
    }
}

struct NowListenToIView_Previews: PreviewProvider {
    static var previews: some View {
        NowListenToIView()
    }
}

struct PodCastCover: View {
    var body: some View {
        HStack {
            VStack {
                Image("poster")
                    .resizable()
                    .frame(minWidth: 150, idealWidth: 200, maxWidth: 250, minHeight: 150, idealHeight: 200, maxHeight: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                    .cornerRadius(12)
                VStack(alignment: .leading) {
                    Text("还剩30分钟")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("43.碎片信息的收集与整理")
                    Text("本期节目中,我们邀请了Flomo的产品经理用来说事情")
                        .foregroundColor(.gray)
                        .lineLimit(1)
                    Text("一派·Podcast")
                        .foregroundColor(.purple)
                }
                .frame(minWidth: 150, idealWidth: 200, maxWidth: 250,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
