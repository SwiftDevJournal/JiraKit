// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of the sanitized JQL query.
public struct SanitizedJqlQuery: Codable {
    /// The initial query.
    public var initialQuery: String?
    /// The sanitized query, if there were no errors.
    public var sanitizedQuery: String?
    /// The list of errors.
    public var errors: ErrorCollection?
    /// The account ID of the user for whom sanitization was performed.
    public var accountID: String?

    public init(initialQuery: String? = nil, sanitizedQuery: String? = nil, errors: ErrorCollection? = nil, accountID: String? = nil) {
        self.initialQuery = initialQuery
        self.sanitizedQuery = sanitizedQuery
        self.errors = errors
        self.accountID = accountID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.initialQuery = try values.decodeIfPresent(String.self, forKey: "initialQuery")
        self.sanitizedQuery = try values.decodeIfPresent(String.self, forKey: "sanitizedQuery")
        self.errors = try values.decodeIfPresent(ErrorCollection.self, forKey: "errors")
        self.accountID = try values.decodeIfPresent(String.self, forKey: "accountId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(initialQuery, forKey: "initialQuery")
        try values.encodeIfPresent(sanitizedQuery, forKey: "sanitizedQuery")
        try values.encodeIfPresent(errors, forKey: "errors")
        try values.encodeIfPresent(accountID, forKey: "accountId")
    }
}