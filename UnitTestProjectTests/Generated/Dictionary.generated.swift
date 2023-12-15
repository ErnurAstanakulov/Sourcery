// Generated using Sourcery 2.1.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

@testable import UnitTestProject

// MARK - EmojiDetail toDictionary
extension EmojiDetail {
  func toDictionary() -> [String: Any] {
    var dict = [String: Any]()
    dict["creteDate"] = creteDate
    dict["year"] = year
    return dict
  }
}
