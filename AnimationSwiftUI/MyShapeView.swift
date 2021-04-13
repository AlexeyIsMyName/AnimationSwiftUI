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
//            let nearLine = size * 0.09
//            let farLine = size * 0.91
            let middle = size / 2
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
                
                /*
                Path { path in
                     path.move(to: CGPoint(x: middle * 0.7, y: middle * 0.2))
                     path.addLine(to: CGPoint(x: middle * 0.7, y: middle * 1.8))
                     path.addLine(to: CGPoint(x: middle * 1.8, y: middle * 0.7))
                     path.addLine(to: CGPoint(x: middle * 0.2, y: middle * 0.7))
                     path.addLine(to: CGPoint(x: middle * 1.3, y: middle * 1.8))
                     path.addLine(to: CGPoint(x: middle * 1.3, y: middle * 0.2))
                     path.addLine(to: CGPoint(x: middle * 0.2, y: middle * 1.3))
                     path.addLine(to: CGPoint(x: middle * 1.8, y: middle * 1.3))
                     path.addLine(to: CGPoint(x: middle * 0.7, y: middle * 0.2))
                }
                .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
                */
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: middle * 0.1))          //1
                    path.addLine(to: CGPoint(x: middle * 1.6, y: middle * 1.6)) //7
                    path.addLine(to: CGPoint(x: middle * 0.1, y: middle))       //13
                    path.addLine(to: CGPoint(x: middle * 1.6, y: middle * 0.4)) //3
                    path.addLine(to: CGPoint(x: middle, y: middle * 1.9))       //9
                    path.addLine(to: CGPoint(x: middle * 0.4, y: middle * 0.4)) //15
                    path.addLine(to: CGPoint(x: middle * 1.9, y: middle))       //5
                    path.addLine(to: CGPoint(x: middle * 0.4, y: middle * 1.6)) //11
                    path.addLine(to: CGPoint(x: middle, y: middle * 0.1))       //1
                }
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
