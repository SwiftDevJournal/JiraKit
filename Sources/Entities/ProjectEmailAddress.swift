// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A project's sender email address.
public struct ProjectEmailAddress: Codable {
    /// The email address.
    public var emailAddress: String?
    /// When using a custom domain, the status of the email address.
    public var emailAddressStatus: [String]?

    public init(emailAddress: String? = nil, emailAddressStatus: [String]? = nil) {
        self.emailAddress = emailAddress
        self.emailAddressStatus = emailAddressStatus
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.emailAddress = try values.decodeIfPresent(String.self, forKey: "emailAddress")
        self.emailAddressStatus = try values.decodeIfPresent([String].self, forKey: "emailAddressStatus")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(emailAddress, forKey: "emailAddress")
        try values.encodeIfPresent(emailAddressStatus, forKey: "emailAddressStatus")
    }
}
