//
//  Circular.swift
//  CircularProgressBarUI
//
//  Created by Safak Yaral on 29.12.2024.
//

import SwiftUI

struct Circular: View {
    let lineWidht : CGFloat
    let backroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack{
                CircularShapeView()
                    .stroke(style: StrokeStyle(lineWidth: lineWidht, lineCap: .round))
                    .fill(backroundColor)
                
                CircularShapeView(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidht, lineCap: .round))
                    .fill(foregroundColor)
                    
                
            }
            .animation(.easeIn(duration: 1.5), value: percentage)
            .padding(lineWidht/1.5)
            
        }
      
    }
}

#Preview {
    Circular(lineWidht: 10, backroundColor: .red, foregroundColor: .yellow, percentage: 50)
}
