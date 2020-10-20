//
//  ColorView.swift
//  EmeljanovMV_HW3.2
//
//  Created by Михаил Емельянов on 20.10.2020.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(height: 120)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 4))
            .foregroundColor(.white)
            .shadow(color: Color.gray, radius: 4, x: 1, y: 0)
            .padding()
           
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 124, green: 124, blue: 255)
    }
}
