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
            let middle = size / 2
            
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
                     
                     path.move(to: CGPoint(x: middle, y: middle * 0.1))
                     path.addLine(to: CGPoint(x: middle * 1.6, y: middle * 1.6))
                     path.addLine(to: CGPoint(x: middle * 0.1, y: middle))
                     path.addLine(to: CGPoint(x: middle * 1.6, y: middle * 0.4))
                     path.addLine(to: CGPoint(x: middle, y: middle * 1.9))
                     path.addLine(to: CGPoint(x: middle * 0.4, y: middle * 0.4))
                     path.addLine(to: CGPoint(x: middle * 1.9, y: middle))
                     path.addLine(to: CGPoint(x: middle * 0.4, y: middle * 1.6))
                     path.addLine(to: CGPoint(x: middle, y: middle * 0.1))
                 }
                 .stroke(Color.red, lineWidth: 2)
                 .opacity(0.7)
                 */
                
                let peak1 = CGFloat(0.1)
                let peak2 = CGFloat(0.4)
                let peak3 = CGFloat(0.25)
                let radius = middle * 0.9
                let sideAB = abs(radius * sin(45 / 2))
                let x = sqrt(pow(radius, 2) - pow(sideAB, 2))
                
                let sideAB2 = abs(radius * sin(90 / 2))
                let x2 = sqrt(pow(radius, 2) - pow(sideAB2, 2))
                                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: middle - radius))                                   // 1
                    path.addLine(to: CGPoint(x: middle + x, y: middle + sideAB))                            // 6
                    
                    path.addLine(to: CGPoint(x: middle * peak2, y: middle * (2 - peak2)))                   // 11
                    
                    path.addLine(to: CGPoint(x: middle * (0.9 - peak3), y: middle * peak3 * 0.9))           // 16
                    
                    path.addLine(to: CGPoint(x: middle * (2 - peak1), y: middle))                           // 5
                    
                    path.addLine(to: CGPoint(x: middle * (0.9 - peak3), y: middle * (2 - peak3)))           // 10
                    
                    path.addLine(to: CGPoint(x: middle * peak2, y: middle * peak2))                         // 15
                    
                    path.addLine(to: CGPoint(x: middle + x, y: middle * (0.9 - peak3)))           // 4
                    
                    path.addLine(to: CGPoint(x: middle, y: middle * (2 - peak1)))                           // 9
                    
                    path.addLine(to: CGPoint(x: middle * peak3 * 0.9, y: middle * (0.9 - peak3)))           // 14
                    
                    path.addLine(to: CGPoint(x: middle * (2 - peak2), y: middle * peak2))                   // 3
                    
                    path.addLine(to: CGPoint(x: middle * 1.4, y: middle * (2 - peak3)))                     // 8
                    
                    path.addLine(to: CGPoint(x: middle * peak1, y: middle))                                 // 13
                    
                    path.addLine(to: CGPoint(x: middle * 1.4, y: middle * peak3 * 0.9))                     // 2
                    
                    path.addLine(to: CGPoint(x: middle * (2 - peak2), y: middle * (2 - peak2)))             // 7
                    
                    path.addLine(to: CGPoint(x: middle * peak3 * 0.9, y: middle * 1.4))                     // 12
                    
                    path.addLine(to: CGPoint(x: middle, y: middle * peak1))                                 // 1
                }
                .stroke(Color.red, lineWidth: 2)
                .opacity(1)
                
//                Image(systemName: "bitcoinsign.circle")
//                    .resizable()
//                    .foregroundColor(.white)
//                    .opacity(1)
//                    .scaleEffect(0.7)
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
