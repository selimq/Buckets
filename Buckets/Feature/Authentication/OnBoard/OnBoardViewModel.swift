//
//  OnBoardViewModel.swift
//  Buckets
//
//  Created by Selim Doğan on 21.03.2023.
//

import Foundation

final class OnBoardViewModel: ObservableObject {
    @Published var currentSlide = OnBoardSlideModel.items[0].id
    @Published var isWelcomeDirect = false

    private let cache = UserStatusCache()

    func checkIsFirstLogin() -> Bool {
        let value = cache.read(key: .onBoard)
        return value.isEmpty || value == UserOnBoardStatus.onBoard.rawValue
    }

    func checkUserFirstTime() {
        guard !checkIsFirstLogin() else {
            setOnboardStatus(status: .welcome)
            return
        }
        redirectWelcome()
    }

    private func redirectWelcome() {
        isWelcomeDirect = true
    }

    private func setOnboardStatus(status: UserOnBoardStatus) {
        cache.save(key: .onBoard, value: status.rawValue)
    }

    func updateFirstAttempt() {
        setOnboardStatus(status: .welcome)
        redirectWelcome()
    }
}
