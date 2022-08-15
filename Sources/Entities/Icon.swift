// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// An icon. If no icon is defined:
/// 
///  *  for a status icon, no status icon displays in Jira.
///  *  for the remote object icon, the default link icon displays in Jira.
public struct Icon: Codable {
    /// The URL of an icon that displays at 16x16 pixel in Jira.
    public var url16x16: String?
    /// The title of the icon. This is used as follows:
    /// 
    ///  *  For a status icon it is used as a tooltip on the icon. If not set, the status icon doesn't display a tooltip in Jira.
    ///  *  For the remote object icon it is used in conjunction with the application name to display a tooltip for the link's icon. The tooltip takes the format "\[application name\] icon title". Blank itemsare excluded from the tooltip title. If both items are blank, the icon tooltop displays as "Web Link".
    public var title: String?
    /// The URL of the tooltip, used only for a status icon. If not set, the status icon in Jira is not clickable.
    public var link: String?

    public init(url16x16: String? = nil, title: String? = nil, link: String? = nil) {
        self.url16x16 = url16x16
        self.title = title
        self.link = link
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url16x16 = try values.decodeIfPresent(String.self, forKey: "url16x16")
        self.title = try values.decodeIfPresent(String.self, forKey: "title")
        self.link = try values.decodeIfPresent(String.self, forKey: "link")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(url16x16, forKey: "url16x16")
        try values.encodeIfPresent(title, forKey: "title")
        try values.encodeIfPresent(link, forKey: "link")
    }
}
