//
//  TabViews.swift
//  AnimationSwiftUI
//
//  Created by ALEKSEY SUSLOV on 13.04.2021.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
            AnimationView()
                .tabItem {
                    Image(systemName: "bicycle")
                    Text("Animation View")
                }
            ShapesView()
                .tabItem {
                    Image(systemName: "square.on.circle")
                    Text("Shapes View")
                }
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
