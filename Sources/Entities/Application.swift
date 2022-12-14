// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The application the linked item is in.
public struct Application: Codable {
    /// The name-spaced type of the application, used by registered rendering apps.
    public var type: String?
    /// The name of the application. Used in conjunction with the (remote) object icon title to display a tooltip for the link's icon. The tooltip takes the format "\[application name\] icon title". Blank items are excluded from the tooltip title. If both items are blank, the icon tooltop displays as "Web Link". Grouping and sorting of links may place links without an application name last.
    public var name: String?

    public init(type: String? = nil, name: String? = nil) {
        self.type = type
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decodeIfPresent(String.self, forKey: "type")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(type, forKey: "type")
        try values.encodeIfPresent(name, forKey: "name")
    }
}
