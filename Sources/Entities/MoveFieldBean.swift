// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct MoveFieldBean: Codable {
    /// The ID of the screen tab field after which to place the moved screen tab field. Required if `position` isn't provided.
    public var after: URL?
    /// The named position to which the screen tab field should be moved. Required if `after` isn't provided.
    public var position: Position?

    /// The named position to which the screen tab field should be moved. Required if `after` isn't provided.
    public enum Position: String, Codable, CaseIterable {
        case earlier = "Earlier"
        case later = "Later"
        case first = "First"
        case last = "Last"
    }

    public init(after: URL? = nil, position: Position? = nil) {
        self.after = after
        self.position = position
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.after = try values.decodeIfPresent(URL.self, forKey: "after")
        self.position = try values.decodeIfPresent(Position.self, forKey: "position")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(after, forKey: "after")
        try values.encodeIfPresent(position, forKey: "position")
    }
}
