// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Defaults for a User Picker (single) custom field.
public struct CustomFieldContextSingleUserPickerDefaults: Codable {
    /// The ID of the context.
    public var contextID: String
    /// The ID of the default user.
    public var accountID: String
    /// Filter for a User Picker (single) custom field.
    public var userFilter: UserFilter
    public var type: String

    public init(contextID: String, accountID: String, userFilter: UserFilter, type: String) {
        self.contextID = contextID
        self.accountID = accountID
        self.userFilter = userFilter
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.contextID = try values.decode(String.self, forKey: "contextId")
        self.accountID = try values.decode(String.self, forKey: "accountId")
        self.userFilter = try values.decode(UserFilter.self, forKey: "userFilter")
        self.type = try values.decode(String.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(contextID, forKey: "contextId")
        try values.encode(accountID, forKey: "accountId")
        try values.encode(userFilter, forKey: "userFilter")
        try values.encode(type, forKey: "type")
    }
}