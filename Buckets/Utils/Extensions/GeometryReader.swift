//
//  GeometryReader.swift
//  Buckets
//
//  Created by Selim Doğan on 2.12.2022.
//

import SwiftUI

extension GeometryProxy {
    /// Get dynamic height from percent value
    /// - Parameter height: Double
    /// - Returns: Calculated height from percent value
    func dh(height: Double) -> Double {
        return size.height * height
    }
    /// Get dynamic width from percent value
    /// - Parameter width: Double
    /// - Returns: Calculated width from percent value
    func dw(width: Double) -> Double {
        return size.width * width
    }
}
