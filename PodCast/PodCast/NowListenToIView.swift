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
            NowPlayToList()
            HStack {
                VStack {
                    Text("最近播放")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("最近在听的单集")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                NavigationLink(destination: ComponentLibrary()) {
                    Text("查看全部")
                        .foregroundColor(.purple)
                }
            }.padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    RecentPlayCover(progressValue: 0.40)
                    RecentPlayCover(progressValue: 0.85)
                    RecentPlayCover(progressValue: 0.1)
                    RecentPlayCover(progressValue: 0.9)
                }
            }.frame(minWidth: 100, maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
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
                    .frame(minWidth: 150, idealWidth: 240, maxWidth: 250, minHeight: 150, idealHeight: 240, maxHeight: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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

struct NowPlayToList: View {
    var body: some View {
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
                    PodCastCover()
                }
                .padding(.horizontal)
            }
            
        }
    }
}

struct SinglePodcastContentMenu: View {
    var body: some View {
        Menu {
            Button("报告问题", action: { })
            Button("拷贝链接", action: { })
            Button("共享单集", action: { })
            Button("存储单集", action: { })
            Button("标记为已播放", action: { })
            Button("最后播放", action: { })
        } label: {
            Image(systemName: "ellipsis")
                .scaleEffect(0.8)
                .foregroundColor(.gray)
        }
    }
}

struct RecentPlayCover: View {
    var progressValue: Double
    
    var body: some View {
        HStack {
            Image("poster")
                .resizable()
                .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(12)
            VStack(alignment: .leading) {
                Text("星期三")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("43.碎片信息的搜集与管理")
                    .lineLimit(1)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                Text("本期节目中,我们邀请了flomo来我们演播室做客")
                    .lineLimit(1)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                HStack {
                    Image(systemName: "play.fill")
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.purple)
                        .background(Color(UIColor.systemGray5))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    ProgressView(value: progressValue)
                        .foregroundColor(.purple)
                        .frame(width: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("7分钟")
                        .font(.subheadline)
                        .foregroundColor(.purple)
                    Image(systemName: "arrow.down.circle.fill")
                        .scaleEffect(1)
                        .foregroundColor(.gray)
                    SinglePodcastContentMenu()
                }
            }
        }
        .frame(minWidth: 100, idealWidth: 380, maxWidth: 400)
        .padding(.horizontal, 8.0)
    }
}
