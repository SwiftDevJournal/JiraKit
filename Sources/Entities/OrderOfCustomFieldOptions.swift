// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// An ordered list of custom field option IDs and information on where to move them.
public struct OrderOfCustomFieldOptions: Codable {
    /// A list of IDs of custom field options to move. The order of the custom field option IDs in the list is the order they are given after the move. The list must contain custom field options or cascading options, but not both.
    public var customFieldOptionIDs: [String]
    /// The ID of the custom field option or cascading option to place the moved options after. Required if `position` isn't provided.
    public var after: String?
    /// The position the custom field options should be moved to. Required if `after` isn't provided.
    public var position: Position?

    /// The position the custom field options should be moved to. Required if `after` isn't provided.
    public enum Position: String, Codable, CaseIterable {
        case first = "First"
        case last = "Last"
    }

    public init(customFieldOptionIDs: [String], after: String? = nil, position: Position? = nil) {
        self.customFieldOptionIDs = customFieldOptionIDs
        self.after = after
        self.position = position
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.customFieldOptionIDs = try values.decode([String].self, forKey: "customFieldOptionIds")
        self.after = try values.decodeIfPresent(String.self, forKey: "after")
        self.position = try values.decodeIfPresent(Position.self, forKey: "position")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(customFieldOptionIDs, forKey: "customFieldOptionIds")
        try values.encodeIfPresent(after, forKey: "after")
        try values.encodeIfPresent(position, forKey: "position")
    }
}
