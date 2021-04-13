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
            let nearLine = size * 0.09
            let farLine = size * 0.91
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
                    path.move(to: CGPoint(x: middle, y: nearLine))
                    path.addLine(to: CGPoint(x: farLine, y: middle))
                    path.addLine(to: CGPoint(x: middle, y: farLine))
                    path.addLine(to: CGPoint(x: nearLine, y: middle))
                    path.addLine(to: CGPoint(x: middle, y: nearLine))
                }
                .stroke(Color.red, lineWidth: 3)
                */
                
                let startX = middle
                let startY = nearLine
                
                ForEach(0..<5) { iteration in
                    Path { path in
                        path.move(to: CGPoint(x: startX, y: startY))
                        path.addLine(to: CGPoint(x: startX, y: farLine))
                    }
                    .stroke(Color.red, lineWidth: 3)
                }
                
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: nearLine))
                    
                    
                }
                .stroke(Color.red, lineWidth: 3)
                
                
                /*
                Path { path in
                    path.move(to: CGPoint(x: middle + nearLine, y: nearLine))
                    path.addLine(to: CGPoint(x: farLine, y: farLine))
                    path.addLine(to: CGPoint(x: nearLine, y: farLine))
                    path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
                }
                .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
                */
                
                /*
                ForEach(0..<3) { iteration in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .blue]),
                                startPoint: UnitPoint(x: 0, y: 1),
                                endPoint: UnitPoint(x: 1, y: 0)
                            )
                        )
                        .scaleEffect(0.7)
                        .rotationEffect(.degrees(Double(iteration) * 60))
                }
                */
                
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
