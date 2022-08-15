// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The details of a UI modification.
public struct UpdateUiModificationDetails: Codable {
    /// The name of the UI modification. The maximum length is 255 characters.
    public var name: String?
    /// The description of the UI modification. The maximum length is 255 characters.
    public var description: String?
    /// The data of the UI modification. The maximum size of the data is 50000 characters.
    public var data: String?
    /// List of contexts of the UI modification. The maximum number of contexts is 1000. If provided, replaces all existing contexts.
    public var contexts: [UiModificationContextDetails]?

    public init(name: String? = nil, description: String? = nil, data: String? = nil, contexts: [UiModificationContextDetails]? = nil) {
        self.name = name
        self.description = description
        self.data = data
        self.contexts = contexts
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.data = try values.decodeIfPresent(String.self, forKey: "data")
        self.contexts = try values.decodeIfPresent([UiModificationContextDetails].self, forKey: "contexts")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(data, forKey: "data")
        try values.encodeIfPresent(contexts, forKey: "contexts")
    }
}