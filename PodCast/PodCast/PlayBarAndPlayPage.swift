//
//  PlayBarAndPlayPage.swift
//  PodCast
//
//  Created by SarathYu on 2021/3/30.
//

import SwiftUI

struct PlayBarAndPlayPage: View {
    @State var isPlayNow = false
    var coverImageName = "poster"
    var playVaule = 0.68
    var playTitle = "43.碎片信息的收集与管理"
    var playFullSecond = 480
    var playNowSecond = 200
    
    var body: some View {
        HStack(spacing: 20.0) {
            Image(coverImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(8)
            Text(playTitle)
                .font(.body)
            Button(action: {
                isPlayNow.toggle()
            }, label: {
                isPlayNow ? Image(systemName: "play.fill")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/) : Image(systemName: "stop.fill")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            })
            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Image(systemName: "goforward.30")
        }.padding(.horizontal)
        
    }
}

struct PlayBar: View {
    
    var playVaule: Double
    var playTitle: String
    var playFullSecond: Int
    var playNowSecond: Int
    
    
    var body: some View {
        Text("Hello")
        Image("poster")
            .scaledToFill()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct PlayBarAndPlayPage_Previews: PreviewProvider {
    static var previews: some View {
        PlayBarAndPlayPage()
    }
}
