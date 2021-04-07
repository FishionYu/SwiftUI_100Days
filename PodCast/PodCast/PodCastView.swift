//
//  PodCastView.swift
//  PodCast
//
//  Created by SarathYu on 2021/4/7.
//

import SwiftUI

struct PodCastView: View {
    var body: some View {
        VStack {
            HStack {
                Text("播客")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
            }.padding()
            ScrollView(.horizontal) {
                LazyHStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                    ForEach(1...10, id: \.self) { count in
                        PodcastIsSelected(title: "41. 给手机换壁纸这件小事,如何自动化", img: "poster")
                        PodcastIsSelected(title: "41. 给手机换壁纸这件小事,如何自动化并定时运行", img: "poster")
                        PodcastIsSelected(title: "41. 给手机换壁纸这件小事,如何自动化", img: "poster")
                    }
                })
            }
            .frame(width: .infinity, height: 300)
        }
    }
}

struct PodCastView_Previews: PreviewProvider {
    static var previews: some View {
        PodCastView()
    }
}

struct PodcastIsSelected: View {
    var title: String
    var img: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("精选")
                .foregroundColor(.purple)
                .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 68, alignment: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            Image(img)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(6)
        }.padding()
    }
}
