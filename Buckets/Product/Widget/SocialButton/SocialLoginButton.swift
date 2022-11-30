//
//  SocialLoginButton.swift
//  Buckets
//
//  Created by Selim Doğan on 30.11.2022.
//

import SwiftUI

struct SocialLoginButton: View {
        var buttonModel: SocialLoginButtonModel

        var body: some View {
            Button(action: buttonModel.onTap, label: {
                HStack {
                    Image(buttonModel.logo)
                    Text(buttonModel.text)
                    Spacer()
                }.tint(.white).background(buttonModel.color).foregroundColor(buttonModel.textColor)
            }).buttonStyle(.borderedProminent).buttonBorderShape(.roundedRectangle).controlSize(.large).accentColor(buttonModel.color)
        }
}

struct SocialLoginButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialLoginButton(buttonModel: SocialLoginButtonModel.items[0])
    }
}
