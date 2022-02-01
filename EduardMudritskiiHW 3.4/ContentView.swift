//
//  ContentView.swift
//  EduardMudritskiiHW 3.4
//
//  Created by Эдуард on 30.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var targetValue = Double.random(in: 0...100)
    @State private var value = Double.random(in: 1...100)
    @State private var showAlert = false
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Подвиньте слайдер, как можно ближе к: \(lround(targetValue))")
                
            
           HStack {
                Text("0")
                GameSliderView(curretValue: $value)
                Text("100")
            }
           
            Button("Проверь меня!") {
                showAlert = true
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Your score"), message: Text("\(lround(value))"))
            }
            Button(action: {newTargetValue()}) {
                Text("Начать заново")
            }
        }
        .padding()
    }
    
    private func newTargetValue() {
        targetValue = Double.random(in: 1...100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
