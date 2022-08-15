// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct UserMigrationBean: Codable {
    public var key: String?
    public var username: String?
    public var accountID: String?

    public init(key: String? = nil, username: String? = nil, accountID: String? = nil) {
        self.key = key
        self.username = username
        self.accountID = accountID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
        self.username = try values.decodeIfPresent(String.self, forKey: "username")
        self.accountID = try values.decodeIfPresent(String.self, forKey: "accountId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(key, forKey: "key")
        try values.encodeIfPresent(username, forKey: "username")
        try values.encodeIfPresent(accountID, forKey: "accountId")
    }
}