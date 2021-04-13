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
    
    var startX = CGFloat(0)
    var startY = CGFloat(0)
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
//            let nearLine = size * 0.09
//            let farLine = size * 0.91
//            let middle = size / 2
//            let radius = farLine - nearLine
            
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
                
                Path { path in
                    path.move(to: CGPoint(x: 70, y: 20))
                    path.addLine(to: CGPoint(x: 70, y: 180))
                    path.addLine(to: CGPoint(x: 180, y: 70))
                    path.addLine(to: CGPoint(x: 20, y: 70))
                    path.addLine(to: CGPoint(x: 130, y: 180))
                    path.addLine(to: CGPoint(x: 130, y: 20))
                    path.addLine(to: CGPoint(x: 20, y: 130))
                    path.addLine(to: CGPoint(x: 180, y: 130))
                    path.addLine(to: CGPoint(x: 70, y: 20))
                }
                //.stroke(Color.red, lineWidth: 3)
                .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
                
                Image(systemName: "bitcoinsign.circle")
                    .resizable()
                    .foregroundColor(.white)
                    .opacity(0.9)
                    .scaleEffect(0.7)
            }
        }
        .frame(width: width, height: height)
    }
}

struct MyShapeView_Previews: PreviewProvider {
    static var previews: some View {
        MyShapeView(width: 200, height: 200)
    }
}
