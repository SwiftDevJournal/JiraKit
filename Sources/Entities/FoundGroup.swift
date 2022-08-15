// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A group found in a search.
public struct FoundGroup: Codable {
    /// The name of the group. The name of a group is mutable, to reliably identify a group use ``groupId`.`
    public var name: String?
    /// The group name with the matched query string highlighted with the HTML bold tag.
    public var html: String?
    public var labels: [GroupLabel]?
    /// The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*.
    public var groupID: String?

    public init(name: String? = nil, html: String? = nil, labels: [GroupLabel]? = nil, groupID: String? = nil) {
        self.name = name
        self.html = html
        self.labels = labels
        self.groupID = groupID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.html = try values.decodeIfPresent(String.self, forKey: "html")
        self.labels = try values.decodeIfPresent([GroupLabel].self, forKey: "labels")
        self.groupID = try values.decodeIfPresent(String.self, forKey: "groupId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(html, forKey: "html")
        try values.encodeIfPresent(labels, forKey: "labels")
        try values.encodeIfPresent(groupID, forKey: "groupId")
    }
}