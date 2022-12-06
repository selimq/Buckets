//
//  WelcomeView.swift
//  Buckets
//
//  Created by Selim Doğan on 30.11.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(Images.Auth.juice.rawValue).resizable()
            Color.black30
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    Image(Icons.Auth.appLogo.rawValue)
                    Spacer()
                    // Social login button comes from list
                    ForEach(SocialLoginButtonModel.items) { b in
                        SocialLoginButton(buttonModel: b).padding(.buttonPadding)
                    }
                    Divider().frame(width: geometry.dw(width: 0.6),
                                    height: 2).overlay(.gray)
                    // Email button
                    CustomButton(onTap: {}, title: LocaleKeys.Buttons.getStarted.rawValue).padding(.buttonPadding)
                    Spacer().frame(height: geometry.dh(height: 0.1))
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().ignoresSafeArea()
    }
}
