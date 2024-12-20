//
//  ContentView.swift
//  CircularSwiftUI
//
//  Created by Hamza Batuhan Kasar on 13.11.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0
    @State var fourthCirclePercentage : Double = 0
    
    var body: some View {
        ZStack {
            
            Circular(lineWidth: 40, backgroundColor: Color.blue.opacity(0.6), foregroundColor: Color.secondary, percentage: firstCirclePercentage)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if self.firstCirclePercentage == 0 {
                        self.firstCirclePercentage = 100
                        
                    } else {
                        self.firstCirclePercentage = 0
                    }
                }
            Circular(lineWidth: 40, backgroundColor: Color.yellow.opacity(0.6), foregroundColor: Color.secondary, percentage: secondCirclePercentage)
                .frame(width: 250, height: 250)
                .onTapGesture {
                    if self.secondCirclePercentage == 0 {
                        self.secondCirclePercentage = 100
                        
                    } else {
                        self.secondCirclePercentage = 0
                    }
                }
            Circular(lineWidth: 40, backgroundColor: Color.green.opacity(0.7), foregroundColor: Color.secondary, percentage: thirdCirclePercentage)
                .frame(width: 150, height: 150)
                .onTapGesture {
                    if self.thirdCirclePercentage == 0 {
                        self.thirdCirclePercentage = 100
                        
                    } else {
                        self.thirdCirclePercentage = 0
                    }
                }
            Circular(lineWidth: 13, backgroundColor: Color.red.opacity(1.5), foregroundColor: Color.secondary, percentage: fourthCirclePercentage)
                .frame(width: 75, height: 55)
                .onTapGesture {
                    if self.fourthCirclePercentage == 0 {
                        self.fourthCirclePercentage = 100
                        
                    } else {
                        self.fourthCirclePercentage = 0
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
