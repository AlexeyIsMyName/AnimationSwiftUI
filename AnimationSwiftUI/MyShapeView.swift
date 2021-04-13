//
//  MyShapeView.swift
//  AnimationSwiftUI
//
//  Created by ALEKSEY SUSLOV on 13.04.2021.
//

import SwiftUI

struct MyShapeView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            ZStack {
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [.orange, .yellow]),
                            center: .center,
                            startRadius: size * 0.3,
                            endRadius: size * 0.5)
                        )
                    .scaleEffect(0.95)
                
                Circle()
                    .scale(0.95)
                    .stroke(Color.orange, lineWidth: 5)
                
                HexadecagonStarView(color: .red, lineWidth: 3)
                    .opacity(0.8)
                
                Image(systemName: "bitcoinsign.circle")
                    .resizable()
                    .foregroundColor(.white)
                    .opacity(1)
                    .scaleEffect(0.7)
            }
        }
        .frame(width: width, height: height)
    }
}

struct MyShapeView_Previews: PreviewProvider {
    static var previews: some View {
        MyShapeView(width: 330, height: 330)
    }
}
