//
//  NumberTextField.swift
//  ColorSloder_SwiftUI
//
//  Created by Terechshenkov Andrey on 30.03.2021.
//

import SwiftUI

struct NumberTextField: View {
    @Binding var number: Double // How to cast Bindled types Double to Int?
    var range = 0...Int.max
    
    @State private var wrongNumberAlert = false
    
    private let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .none
        return formatter
    }()

    var body: some View {
        TextField("\(number)", value: $number, formatter: formatter, onCommit: checkNumber)
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .multilineTextAlignment(.trailing)
            .keyboardType(.numberPad)
            .alert(isPresented: $wrongNumberAlert) {
                Alert(
                    title: Text("Wrong Value"),
                    message: Text("Enter number in range 0...255")
                )
            }
    }
    
    private func checkNumber() {
        if !range.contains(Int(number)) {
            wrongNumberAlert.toggle()
            let first = Double(range.first!)
            let last = Double(range.last!)
            number = number < first ? first : last
        }
    }
}

struct NumberTextField_Previews: PreviewProvider {
    static var previews: some View {
        NumberTextField(number: .constant(100.0), range: 0...1000)
    }
}
