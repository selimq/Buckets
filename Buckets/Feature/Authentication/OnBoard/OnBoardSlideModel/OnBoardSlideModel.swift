//
//  OnBoardSlideModel.swift
//  Buckets
//
//  Created by Selim Doğan on 5.12.2022.
//

import Foundation
struct OnBoardSlideModel: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var titleKey: String

    static var items: [OnBoardSlideModel] = [OnBoardSlideModel(image: Images.OnBoard.first.rawValue, titleKey: LocaleKeys.OnBoard.first.rawValue), OnBoardSlideModel(image: Images.OnBoard.second.rawValue, titleKey: LocaleKeys.OnBoard.second.rawValue), OnBoardSlideModel(image: Images.OnBoard.third.rawValue, titleKey: LocaleKeys.OnBoard.third.rawValue)]
}
