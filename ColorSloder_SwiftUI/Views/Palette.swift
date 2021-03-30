//
//  Palette.swift
//  ColorSloder_SwiftUI
//
//  Created by Terechshenkov Andrey on 30.03.2021.
//

import SwiftUI

struct Palette: View {
    var color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 150)
            .foregroundColor(color)
            .roundedBorderStyle(
                borderWidth: 4,
                borderRadius: 10,
                borderColor: .blue
            )
    }
}

struct Palette_Previews: PreviewProvider {
    static var previews: some View {
        Palette(color: .orange)
    }
}
