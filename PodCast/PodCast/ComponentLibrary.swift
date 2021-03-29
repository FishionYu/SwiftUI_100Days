//
//  ComponentLibrary.swift
//  PodCast
//
//  Created by SarathYu on 2021/3/29.
//

import SwiftUI

struct ComponentLibrary: View {
    var body: some View {
        Image("profile")
            .imageHeadPortrait()
    }
}

struct ComponentLibrary_Previews: PreviewProvider {
    static var previews: some View {
        ComponentLibrary()
    }
}


struct HeadPortrait: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .scaledToFill()
            .scaleEffect(3)
            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
    }
}

extension View {
    func headPortrait() -> some View {
        self.modifier(HeadPortrait())
    }
}

extension Image {
    func imageHeadPortrait() -> some View {
        self
            .resizable()
            .headPortrait()
    }
}
