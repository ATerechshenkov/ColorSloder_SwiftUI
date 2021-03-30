//
//  RoundedBorderStyle.swift
//  ColorSloder_SwiftUI
//
//  Created by Terechshenkov Andrey on 30.03.2021.
//

import SwiftUI

struct RoundedBorderStyle: ViewModifier {
    var borderWidth: CGFloat = 1
    var borderRadius: CGFloat = 3
    var borderColor: Color = Color.gray
    
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: borderRadius)
                    .stroke(lineWidth: borderWidth)
                    .foregroundColor(borderColor)
            )
    }
}

extension View {
    func roundedBorderStyle(borderWidth: CGFloat = 1,
                            borderRadius: CGFloat = 3,
                            borderColor: Color = Color.gray)
    -> some View {
        
        ModifiedContent(
            content: self,
            modifier: RoundedBorderStyle(
                borderWidth: borderWidth,
                borderRadius: borderRadius,
                borderColor: borderColor
            )
        )
    }
}
