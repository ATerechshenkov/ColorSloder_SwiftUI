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
                
                // Red
                ColorSlider(
                    value: $redSliderValue,
                    gradientStart: Color(
                        red: 0.0,
                        green: greenSliderValue/255,
                        blue: blueSliderValue/255
                    ),
                    gradientEnd: Color(
                        red: 1.0,
                        green: greenSliderValue/255,
                        blue: blueSliderValue/255
                    )
                )
                    .padding(.bottom, 16)
                
                // Green
                ColorSlider(
                    value: $greenSliderValue,
                    gradientStart: Color(
                        red: redSliderValue/255,
                        green: 0.0,
                        blue: blueSliderValue/255
                    ),
                    gradientEnd: Color(
                        red: redSliderValue/255,
                        green: 1.0,
                        blue: blueSliderValue/255
                    )
                )
                    .padding(.bottom, 16)
                
                // Blue
                ColorSlider(
                    value: $blueSliderValue,
                    gradientStart: Color(
                        red: redSliderValue/255,
                        green: greenSliderValue/255,
                        blue: 0.0
                    ),
                    gradientEnd: Color(
                        red: redSliderValue/255,
                        green: greenSliderValue/255,
                        blue: 1.0
                    )
                )
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

