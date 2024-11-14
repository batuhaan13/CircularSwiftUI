//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Hamza Batuhan Kasar on 14.11.2024.
//

import SwiftUI
import Foundation

struct Circular: View {
    
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .fill(foregroundColor)
                
            }
            
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth/2)
        }
    }
}

#Preview {
    Circular(lineWidth: 10, backgroundColor: .blue, foregroundColor: .yellow, percentage: 50)
}
