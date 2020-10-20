//
//  ContentView.swift
//  EmeljanovMV_HW3.2
//
//  Created by Михаил Емельянов on 20.10.2020.
//

import SwiftUI
// Твк и не смог, к сожалению, совладать с TextField
struct ContentView: View {
    @State private var textFieldValueRed = "122"
    @State private var textFieldValueGreen = "122"
    @State private var textFieldValueBlue = "122"

    @State private var sliderValueRed = Double.random(in: 0...255)
    @State private var sliderValueGreen = Double.random(in: 0...255)
    @State private var sliderValueBlue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            ColorView(red: sliderValueRed, green: sliderValueGreen, blue: sliderValueBlue)
                .padding(.bottom)
            
            ColorSlider(value: $sliderValueRed, textFieldValue: $textFieldValueRed).accentColor(.red)
            ColorSlider(value: $sliderValueGreen, textFieldValue: $textFieldValueGreen).accentColor(.green)
            ColorSlider(value: $sliderValueBlue, textFieldValue: $textFieldValueBlue).accentColor(.blue)
            Spacer()
        }
        .padding()
       
    }
    
}

struct ColorSlider:View {
    @Binding var value: Double
    @Binding var textFieldValue:String
    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
            TextField("0", text: $textFieldValue).frame(width: 35).bordered()
           
        }
    }
}


extension View {
    func bordered() -> some View {
        modifier(BorderedViewModifier())
    }
}

struct BorderedViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.gray)
            )
            .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
