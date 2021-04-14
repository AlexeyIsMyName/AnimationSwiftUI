//
//  HexadecagonStarView.swift
//  AnimationSwiftUI
//
//  Created by ALEKSEY SUSLOV on 14.04.2021.
//

import SwiftUI

struct HexadecagonStarView: View {
    let color: Color
    let lineWidth: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let radius = middle * 0.9
            
            let shape = Hexadecagon(radius: radius)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle - radius))                           // 1!
                
                path.addLine(to: CGPoint(x: middle + shape.peakX, y: middle + shape.sideAB))    // 6
                path.addLine(to: CGPoint(x: middle - shape.peakY, y: middle + shape.peakY))     // 11
                path.addLine(to: CGPoint(x: middle - shape.sideAB, y: middle - shape.peakX))    // 16
                
                path.addLine(to: CGPoint(x: middle + radius, y: middle))                        // 5!
                
                path.addLine(to: CGPoint(x: middle - shape.sideAB, y: middle + shape.peakX))    // 10
                path.addLine(to: CGPoint(x: middle - shape.peakY, y: middle - shape.peakY))     // 15
                path.addLine(to: CGPoint(x: middle + shape.peakX, y: middle - shape.sideAB))    // 4
                
                path.addLine(to: CGPoint(x: middle, y: middle + radius))                        // 9!
                
                path.addLine(to: CGPoint(x: middle - shape.peakX, y: middle - shape.sideAB))    // 14
                path.addLine(to: CGPoint(x: middle + shape.peakY, y: middle - shape.peakY))     // 3
                path.addLine(to: CGPoint(x: middle + shape.sideAB, y: middle + shape.peakX))    // 8
                
                path.addLine(to: CGPoint(x: middle - radius, y: middle))                        // 13!
                
                path.addLine(to: CGPoint(x: middle + shape.sideAB, y: middle - shape.peakX))    // 2
                path.addLine(to: CGPoint(x: middle + shape.peakY, y: middle + shape.peakY))     // 7
                path.addLine(to: CGPoint(x: middle - shape.peakX, y: middle + shape.sideAB))    // 12
                
                path.addLine(to: CGPoint(x: middle, y: middle - radius))                        // 1!
            }
            .stroke(color, lineWidth: lineWidth)
        }
    }
}

struct Hexadecagon {
    let radius: CGFloat
    
    var sideAB: CGFloat {
        abs(radius * sin(45 / 2))
    }
    
    var peakX: CGFloat {
        sqrt(pow(radius, 2) - pow(sideAB, 2))
    }
    
    var peakY: CGFloat {
        sqrt(pow(radius, 2) - pow(sideAB, 2) * 2)
    }
    
    init (radius: CGFloat) {
        self.radius = radius
    }
}

struct HexadecagonStarView_Previews: PreviewProvider {
    static var previews: some View {
        HexadecagonStarView(color: .blue, lineWidth: 2)
    }
}

