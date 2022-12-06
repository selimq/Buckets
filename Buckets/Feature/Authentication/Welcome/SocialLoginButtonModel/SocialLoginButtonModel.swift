//
//  SocialLoginButtonModel.swift
//  Buckets
//
//  Created by Selim Doğan on 30.11.2022.
//

import SwiftUI

struct SocialLoginButtonModel: Identifiable {
    let id = UUID()
    let onTap: () -> Void
    let logo: String
    let text: String
    let color: Color
    var textColor: Color?
    static var items: Array<SocialLoginButtonModel> = [
        SocialLoginButtonModel( onTap: {}, logo: Icons.Social.fbLogo.rawValue, text: LocaleKeys.Auth.facebook.rawValue, color: Color.facebookBlue),
        SocialLoginButtonModel( onTap: {}, logo: Icons.Social.googleLogo.rawValue, text: LocaleKeys.Auth.google.rawValue, color: Color.white,textColor: Color.black),
        SocialLoginButtonModel( onTap: {}, logo: Icons.Social.appleLogo.rawValue, text:  LocaleKeys.Auth.apple.rawValue, color: Color.black)
       
    ]
}

