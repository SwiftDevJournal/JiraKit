// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details a link group, which defines issue operations.
public struct LinkGroup: Codable {
    public var id: String?
    public var styleClass: String?
    /// Details about the operations available in this version.
    public var header: SimpleLink?
    public var weight: Int32?
    public var links: [SimpleLink]?
    public var groups: [LinkGroup]?

    public init(id: String? = nil, styleClass: String? = nil, header: SimpleLink? = nil, weight: Int32? = nil, links: [SimpleLink]? = nil, groups: [LinkGroup]? = nil) {
        self.id = id
        self.styleClass = styleClass
        self.header = header
        self.weight = weight
        self.links = links
        self.groups = groups
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.styleClass = try values.decodeIfPresent(String.self, forKey: "styleClass")
        self.header = try values.decodeIfPresent(SimpleLink.self, forKey: "header")
        self.weight = try values.decodeIfPresent(Int32.self, forKey: "weight")
        self.links = try values.decodeIfPresent([SimpleLink].self, forKey: "links")
        self.groups = try values.decodeIfPresent([LinkGroup].self, forKey: "groups")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(styleClass, forKey: "styleClass")
        try values.encodeIfPresent(header, forKey: "header")
        try values.encodeIfPresent(weight, forKey: "weight")
        try values.encodeIfPresent(links, forKey: "links")
        try values.encodeIfPresent(groups, forKey: "groups")
    }
}
