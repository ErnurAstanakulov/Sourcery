//
//  Extensions.swift
//  UnitTestProject
//
//  Created by Yernur on 02.12.2023.
//

import Foundation

extension String: Identifiable {
    public typealias ID = Int
    public var id: Int {
        return hash
    }
}
