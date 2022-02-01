//
//  GameSliderView.swift
//  EduardMudritskiiHW 3.4
//
//  Created by Эдуард on 01.02.2022.
//

import SwiftUI

struct GameSliderView: View {
    
    
    @Binding var curretValue: Double
    @State private var text = ""
    
    var body: some View {
        Slider(value: $curretValue, in: 0...100, step: 1)
            .onChange(of: curretValue) { newValue in
                text = "\(lround(newValue))"
            }
    }
}

struct GameSliderView_Previews: PreviewProvider {
    static var previews: some View {
        GameSliderView(curretValue: .constant(50))
    }
}
