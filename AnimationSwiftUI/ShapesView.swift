//
//  ShapesView.swift
//  AnimationSwiftUI
//
//  Created by ALEKSEY SUSLOV on 13.04.2021.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    MyShapeView(width: 250, height: 250)
                    GradientRectangles(width: 250, height: 250)
                    PathView(width: 250, height: 250)
                    CurvesView(width: 250, height: 250)
                }
            }
            .navigationBarTitle("Shapes")
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
