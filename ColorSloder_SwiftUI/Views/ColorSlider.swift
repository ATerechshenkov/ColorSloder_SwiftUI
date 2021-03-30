//
//  ColorSlider.swift
//  ColorSloder_SwiftUI
//
//  Created by Terechshenkov Andrey on 30.03.2021.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var color: Color
     
    @State private var input = ""

    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 40, alignment: .trailing)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            NumberTextField(number: $value, range: 0...255)
                .roundedBorderStyle()
                .frame(width:50)
        }
    }
}


struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(135.0), color: .red)
    }
}
