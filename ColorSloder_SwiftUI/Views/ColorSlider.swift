//
//  ColorSlider.swift
//  ColorSloder_SwiftUI
//
//  Created by Terechshenkov Andrey on 30.03.2021.
//

import SwiftUI

struct ColorSlider: View {
    var name: String
    @Binding var value: Double
    var gradientStart: Color
    var gradientEnd: Color
     
    @State private var input = ""

    var body: some View {
        HStack {
            Text("\(name):")
                .frame(width: 60, alignment: .trailing)
            GradientSlider(
                value: $value,
                gradientStart: gradientStart,
                gradientEnd: gradientEnd
            )
            NumberTextField(number: $value, range: 0...255)
                .roundedBorderStyle()
                .frame(width:50)
        }
    }
}


struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(name: "Green", value: .constant(135.0), gradientStart: .red, gradientEnd: .blue)
    }
}
