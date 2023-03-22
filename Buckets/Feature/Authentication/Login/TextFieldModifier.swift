//
//  TextFieldModifier.swift
//  Buckets
//
//  Created by Selim Doğan on 21.03.2023.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content.padding().overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)).foregroundColor(Color.karl)
    }
}
