// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// List of security schemes.
public struct SecuritySchemes: Codable {
    /// List of security schemes.
    public var issueSecuritySchemes: [SecurityScheme]?

    public init(issueSecuritySchemes: [SecurityScheme]? = nil) {
        self.issueSecuritySchemes = issueSecuritySchemes
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.issueSecuritySchemes = try values.decodeIfPresent([SecurityScheme].self, forKey: "issueSecuritySchemes")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(issueSecuritySchemes, forKey: "issueSecuritySchemes")
    }
}