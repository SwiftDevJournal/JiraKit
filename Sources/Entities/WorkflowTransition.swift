// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A workflow transition.
public struct WorkflowTransition: Codable {
    /// The transition ID.
    public var id: Int32
    /// The transition name.
    public var name: String

    public init(id: Int32, name: String) {
        self.id = id
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int32.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
    }
}
