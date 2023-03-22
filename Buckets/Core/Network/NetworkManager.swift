//
//  NetworkManager.swift
//  Buckets
//
//  Created by Selim Doğan on 22.03.2023.
//

import Alamofire
import Foundation

enum NetworkPath: String {
    case users

    static let baseUrl: String = "https://reqres.in/api/"
}

struct NetworkConfig {
    let baseUrl: String
}

protocol INetworkManager {
    func fetch<T: Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T?
    var config: NetworkConfig { get set }
}

extension NetworkManager {
    static let networkManager: INetworkManager = NetworkManager(config: NetworkConfig(baseUrl: NetworkPath.baseUrl))
}

class NetworkManager: INetworkManager {
    internal var config: NetworkConfig

    internal init(config: NetworkConfig) {
        self.config = config
    }

    func fetch<T: Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T? {
        let dataRequest = AF.request("\(config.baseUrl)\(path.rawValue)", method: method).validate().serializingDecodable(T.self)

        let result = await dataRequest.response

        guard let value = result.value else {
            print("ERROR: \(String(describing: result.error))")
            return nil
        }

        return value
    }
}
