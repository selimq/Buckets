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
            VStack {
                Spacer()
                Image(Icons.Auth.appLogo.rawValue)
                ForEach(SocialLoginButtonModel.items){ b in
                    SocialLoginButton(buttonModel: b).padding(EdgeInsets(top:6, leading: 16, bottom: 0, trailing: 16))
                }
                Divider().frame( height: 2).overlay(.gray)
                Spacer()
            }
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().statusBar(hidden: true)
    }
}

struct SocialLoginButtonModel: Identifiable {
    let id = UUID()
    let onTap: () -> Void
    let logo: String
    let text: String
    let color: Color
    var textColor: Color?
    static var items: Array<SocialLoginButtonModel> = [
        SocialLoginButtonModel( onTap: {}, logo: Icons.Social.fbLogo.rawValue, text: "Sign In with Facebook", color: Color.facebookBlue),
        SocialLoginButtonModel( onTap: {}, logo: Icons.Social.googleLogo.rawValue, text: "Sign In with I", color: Color.white,textColor: Color.black),
        SocialLoginButtonModel( onTap: {}, logo: Icons.Social.appleLogo.rawValue, text: "Sign In with I", color: Color.black)
       
    ]
}

