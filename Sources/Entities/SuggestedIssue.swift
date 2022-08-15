// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// An issue suggested for use in the issue picker auto-completion.
public struct SuggestedIssue: Codable {
    /// The ID of the issue.
    public var id: Int?
    /// The key of the issue.
    public var key: String?
    /// The key of the issue in HTML format.
    public var keyHTML: String?
    /// The URL of the issue type's avatar.
    public var img: String?
    /// The phrase containing the query string in HTML format, with the string highlighted with HTML bold tags.
    public var summary: String?
    /// The phrase containing the query string, as plain text.
    public var summaryText: String?

    public init(id: Int? = nil, key: String? = nil, keyHTML: String? = nil, img: String? = nil, summary: String? = nil, summaryText: String? = nil) {
        self.id = id
        self.key = key
        self.keyHTML = keyHTML
        self.img = img
        self.summary = summary
        self.summaryText = summaryText
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int.self, forKey: "id")
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
        self.keyHTML = try values.decodeIfPresent(String.self, forKey: "keyHtml")
        self.img = try values.decodeIfPresent(String.self, forKey: "img")
        self.summary = try values.decodeIfPresent(String.self, forKey: "summary")
        self.summaryText = try values.decodeIfPresent(String.self, forKey: "summaryText")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(key, forKey: "key")
        try values.encodeIfPresent(keyHTML, forKey: "keyHtml")
        try values.encodeIfPresent(img, forKey: "img")
        try values.encodeIfPresent(summary, forKey: "summary")
        try values.encodeIfPresent(summaryText, forKey: "summaryText")
    }
}