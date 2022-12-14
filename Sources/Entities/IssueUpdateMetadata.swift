// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A list of editable field details.
public struct IssueUpdateMetadata: Codable {
    public var fields: [String: FieldMetadata]?

    public init(fields: [String: FieldMetadata]? = nil) {
        self.fields = fields
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.fields = try values.decodeIfPresent([String: FieldMetadata].self, forKey: "fields")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(fields, forKey: "fields")
    }
}
