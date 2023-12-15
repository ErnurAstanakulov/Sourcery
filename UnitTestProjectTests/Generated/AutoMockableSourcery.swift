// Generated using Sourcery 2.1.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif


@testable import UnitTestProject






















class RandomGenerateProtocolMock: RandomGenerateProtocol {




    //MARK: - getRandomIndex

    var getRandomIndexCallsCount = 0
    var getRandomIndexCalled: Bool {
        return getRandomIndexCallsCount > 0
    }
    var getRandomIndexReturnValue: Int!
    var getRandomIndexClosure: (() -> Int)?

    func getRandomIndex() -> Int {
        getRandomIndexCallsCount += 1
        if let getRandomIndexClosure = getRandomIndexClosure {
            return getRandomIndexClosure()
        } else {
            return getRandomIndexReturnValue
        }
    }

}
