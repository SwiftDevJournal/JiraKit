// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The default value for a URL custom field.
public struct CustomFieldContextDefaultValueURL: Codable {
    /// The ID of the context.
    public var contextID: String
    /// The default URL.
    public var url: String
    public var type: String

    public init(contextID: String, url: String, type: String) {
        self.contextID = contextID
        self.url = url
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.contextID = try values.decode(String.self, forKey: "contextId")
        self.url = try values.decode(String.self, forKey: "url")
        self.type = try values.decode(String.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(contextID, forKey: "contextId")
        try values.encode(url, forKey: "url")
        try values.encode(type, forKey: "type")
    }
}
