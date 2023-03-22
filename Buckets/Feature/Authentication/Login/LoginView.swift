//
//  LoginView.swift
//  Buckets
//
//  Created by Selim Doğan on 21.03.2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image(Images.Login.volcano.rawValue).padding(.bottom)
            Text(LocaleKeys.Login.welcomeBack.rawValue.locale()).font(Font.title.bold())
            LoginForm()
            Divider()
            CustomButton(onTap: {}, title: LocaleKeys.Login.createAccount.rawValue).padding(.paddingAll8)
            PolicyText()
        }.padding(.paddingAll8)
    }
}

private struct LoginForm: View {
    var body: some View {
        TextFieldWithIcon(hint: LocaleKeys.Login.writeYourEmail.rawValue, iconName: Icons.Login.mailLogo.rawValue).padding(.paddingAll8)
        PasswordFieldWithIcon(hint: LocaleKeys.Login.writeYourPassword.rawValue, iconName: Icons.Login.passwordLogo.rawValue).padding(.paddingAll8)
    }
}

private struct PolicyText: View {
    var body: some View {
        Text(LocaleKeys.Login.policyAgreement.rawValue.locale()).environment(\.openURL, OpenURLAction(handler: { url in print(url)
            return .discarded
        })).foregroundColor(Color.gray).font(Font.caption).padding(.paddingAll8)
    }
}

private struct TextFieldWithIcon: View {
    let hint: String
    let iconName: String
    var body: some View {
        HStack {
            Image(iconName)
            TextField(hint.locale(), text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}

private struct PasswordFieldWithIcon: View {
    let hint: String
    let iconName: String
    var body: some View {
        HStack {
            Image(iconName)
            SecureField(hint.locale(), text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
