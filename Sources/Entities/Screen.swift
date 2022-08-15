// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A screen.
public struct Screen: Codable {
    /// The ID of the screen.
    public var id: Int?
    /// The name of the screen.
    public var name: String?
    /// The description of the screen.
    public var description: String?
    /// The scope of the screen.
    public var scope: Scope?

    public init(id: Int? = nil, name: String? = nil, description: String? = nil, scope: Scope? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.scope = scope
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.scope = try values.decodeIfPresent(Scope.self, forKey: "scope")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(scope, forKey: "scope")
    }
}