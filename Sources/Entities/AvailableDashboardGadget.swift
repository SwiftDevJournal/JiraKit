// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The details of the available dashboard gadget.
public struct AvailableDashboardGadget: Codable {
    /// The module key of the gadget type.
    public var moduleKey: String?
    /// The URI of the gadget type.
    public var uri: String?
    /// The title of the gadget.
    public var title: String

    public init(moduleKey: String? = nil, uri: String? = nil, title: String) {
        self.moduleKey = moduleKey
        self.uri = uri
        self.title = title
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.moduleKey = try values.decodeIfPresent(String.self, forKey: "moduleKey")
        self.uri = try values.decodeIfPresent(String.self, forKey: "uri")
        self.title = try values.decode(String.self, forKey: "title")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(moduleKey, forKey: "moduleKey")
        try values.encodeIfPresent(uri, forKey: "uri")
        try values.encode(title, forKey: "title")
    }
}