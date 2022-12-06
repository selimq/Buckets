//
//  CustomButton.swift
//  Buckets
//
//  Created by Selim Doğan on 2.12.2022.
//

import SwiftUI

struct CustomButton: View {
    var onTap: () -> Void
    var title: String

    var body: some View {
        Button(action: onTap, label: {
            HStack {
                Spacer()
                Text(title.locale()).bold()
                Spacer()
            }
        }).buttonStyle(.borderedProminent).buttonBorderShape(.roundedRectangle).controlSize(.large).foregroundColor(Color.white).accentColor(.peach)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(onTap: {}, title: LocaleKeys.Buttons.getStarted.rawValue)
    }
}
