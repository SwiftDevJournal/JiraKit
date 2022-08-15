// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A page of items.
public struct PageBeanFieldConfigurationScheme: Codable {
    /// The URL of the page.
    public var this: URL?
    /// If there is another page of results, the URL of the next page.
    public var nextPage: URL?
    /// The maximum number of items that could be returned.
    public var maxResults: Int?
    /// The index of the first item returned.
    public var startAt: Int?
    /// The number of items returned.
    public var total: Int?
    /// Whether this is the last page.
    public var isLast: Bool?
    /// The list of items.
    public var values: [FieldConfigurationScheme]?

    public init(this: URL? = nil, nextPage: URL? = nil, maxResults: Int? = nil, startAt: Int? = nil, total: Int? = nil, isLast: Bool? = nil, values: [FieldConfigurationScheme]? = nil) {
        self.this = this
        self.nextPage = nextPage
        self.maxResults = maxResults
        self.startAt = startAt
        self.total = total
        self.isLast = isLast
        self.values = values
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.nextPage = try values.decodeIfPresent(URL.self, forKey: "nextPage")
        self.maxResults = try values.decodeIfPresent(Int.self, forKey: "maxResults")
        self.startAt = try values.decodeIfPresent(Int.self, forKey: "startAt")
        self.total = try values.decodeIfPresent(Int.self, forKey: "total")
        self.isLast = try values.decodeIfPresent(Bool.self, forKey: "isLast")
        self.values = try values.decodeIfPresent([FieldConfigurationScheme].self, forKey: "values")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(nextPage, forKey: "nextPage")
        try values.encodeIfPresent(maxResults, forKey: "maxResults")
        try values.encodeIfPresent(startAt, forKey: "startAt")
        try values.encodeIfPresent(total, forKey: "total")
        try values.encodeIfPresent(isLast, forKey: "isLast")
        try values.encodeIfPresent(self.values, forKey: "values")
    }
}
