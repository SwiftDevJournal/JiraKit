// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct WorkManagementNavigationInfo: Codable {
    public var boardName: String?

    public init(boardName: String? = nil) {
        self.boardName = boardName
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.boardName = try values.decodeIfPresent(String.self, forKey: "boardName")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(boardName, forKey: "boardName")
    }
}