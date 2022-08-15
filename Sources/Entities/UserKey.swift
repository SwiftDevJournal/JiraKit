// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// List of user account IDs.
public struct UserKey: Codable {
    /// This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
    public var key: String?
    /// The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Returns *unknown* if the record is deleted and corrupted, for example, as the result of a server import.
    public var accountID: String?

    public init(key: String? = nil, accountID: String? = nil) {
        self.key = key
        self.accountID = accountID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
        self.accountID = try values.decodeIfPresent(String.self, forKey: "accountId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(key, forKey: "key")
        try values.encodeIfPresent(accountID, forKey: "accountId")
    }
}
