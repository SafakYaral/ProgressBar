//
//  ContentView.swift
//  CircularProgressBarUI
//
//  Created by Safak Yaral on 29.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePersentage : Double = 0
    @State var secondCirclePersentage : Double = 0
    @State var thirdCirclePersentage : Double = 0
    
    
    var body: some View {
        ZStack{
            
            Circular(lineWidht: 40, backroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue, percentage: firstCirclePersentage)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if self.firstCirclePersentage == 0 {
                        self.firstCirclePersentage = 50
                    }else {
                        self.firstCirclePersentage = 0
                    }
                }
            Circular(lineWidht: 40, backroundColor: Color.red.opacity(0.2), foregroundColor: Color.red, percentage: secondCirclePersentage)
                .frame(width: 250, height: 350)
                .onTapGesture {
                    if self.secondCirclePersentage == 0 {
                        self.secondCirclePersentage = 75
                    }else {
                        self.secondCirclePersentage = 0
                    }
                }
            Circular(lineWidht: 40, backroundColor: Color.green.opacity(0.2), foregroundColor: Color.green, percentage: thirdCirclePersentage)
                .frame(width: 150, height: 350)
                .onTapGesture {
                    if self.thirdCirclePersentage == 0 {
                        self.thirdCirclePersentage = 100
                    }else {
                        self.thirdCirclePersentage = 0
                    }
                }
        }
        
    }
}

#Preview {
    ContentView()
}
