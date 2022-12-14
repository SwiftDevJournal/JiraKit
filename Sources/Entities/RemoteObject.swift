// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The linked item.
public struct RemoteObject: Codable {
    /// The URL of the item.
    public var url: String
    /// The title of the item.
    public var title: String
    /// The summary details of the item.
    public var summary: String?
    /// Details of the icon for the item. If no icon is defined, the default link icon is used in Jira.
    public var icon: Icon?
    /// The status of the item.
    public var status: Status?

    public init(url: String, title: String, summary: String? = nil, icon: Icon? = nil, status: Status? = nil) {
        self.url = url
        self.title = title
        self.summary = summary
        self.icon = icon
        self.status = status
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decode(String.self, forKey: "url")
        self.title = try values.decode(String.self, forKey: "title")
        self.summary = try values.decodeIfPresent(String.self, forKey: "summary")
        self.icon = try values.decodeIfPresent(Icon.self, forKey: "icon")
        self.status = try values.decodeIfPresent(Status.self, forKey: "status")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(url, forKey: "url")
        try values.encode(title, forKey: "title")
        try values.encodeIfPresent(summary, forKey: "summary")
        try values.encodeIfPresent(icon, forKey: "icon")
        try values.encodeIfPresent(status, forKey: "status")
    }
}
