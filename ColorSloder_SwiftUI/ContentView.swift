//
//  ContentView.swift
//  ColorSloder_SwiftUI
//
//  Created by Terechshenkov Andrey on 30.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var redSliderValue = Double.random(in: 0...255)
    @State var greenSliderValue = Double.random(in: 0...255)
    @State var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack {
                Palette(
                    color: Color(
                            red: redSliderValue/255,
                            green: greenSliderValue/255,
                            blue: blueSliderValue/255
                    )
                )
                    .padding(.bottom, 32)
                ColorSlider(value: $redSliderValue, color: Color.red)
                    .padding(.bottom, 16)
                ColorSlider(value: $greenSliderValue, color: Color.green)
                    .padding(.bottom, 16)
                ColorSlider(value: $blueSliderValue, color: Color.blue)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

