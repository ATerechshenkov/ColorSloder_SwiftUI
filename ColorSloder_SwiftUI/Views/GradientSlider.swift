//
//  GradientSlider.swift
//  ColorSloder_SwiftUI
//
//  Created by Terechshenkov Andrey on 30.03.2021.
//

import SwiftUI

struct GradientSlider: View {
    @Binding var value: Double
    var gradientStart: Color
    var gradientEnd: Color
    
    var body: some View {
        ZStack {
              LinearGradient(
                  gradient: Gradient(colors: [gradientStart, gradientEnd]),
                  startPoint: .leading,
                  endPoint: .trailing
              )
              .mask(Slider(value: $value, in: 0...255, step: 1))
              .frame(height: 40)
              Slider(value: $value, in: 0...255, step: 1).opacity(0.05)
        }
    }
}

struct GradientSlider_Previews: PreviewProvider {
    static var previews: some View {
        GradientSlider(value: .constant(100.0), gradientStart: .red, gradientEnd: .blue)
    }
}
