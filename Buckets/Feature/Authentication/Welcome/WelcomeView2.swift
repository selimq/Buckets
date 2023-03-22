//
//  WelcomeView2.swift
//  Buckets
//
//  Created by Selim Doğan on 21.03.2023.
//

import SwiftUI

struct WelcomeView2: View {
    var body: some View {
        ZStack {
            Image(Images.Auth.juice.rawValue).resizable()
            Color.black30
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    Image(Icons.Auth.appLogo.rawValue)
                    Spacer()
                    ForEach(SocialLoginButtonModel.items) {
                        b in SocialLoginButton(buttonModel: b).padding(.buttonPadding)
                    }
                    Divider().frame(width: geometry.dw(width: 0.6), height: 2).overlay(.gray)
                    CustomButton(onTap: {}, title: LocaleKeys.Buttons.getStarted.rawValue).padding(.buttonPadding)
                    Spacer().frame(height: geometry.dh(height: 0.1))
                }
            }
        }
    }
}

struct WelcomeView2_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView2().ignoresSafeArea()
    }
}
