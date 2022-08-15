// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// List of changed worklogs.
public struct ChangedWorklogs: Codable {
    /// Changed worklog list.
    public var values: [ChangedWorklog]?
    /// The datetime of the first worklog item in the list.
    public var since: Int?
    /// The datetime of the last worklog item in the list.
    public var until: Int?
    /// The URL of this changed worklogs list.
    public var this: URL?
    /// The URL of the next list of changed worklogs.
    public var nextPage: URL?
    public var isLastPage: Bool?

    public init(values: [ChangedWorklog]? = nil, since: Int? = nil, until: Int? = nil, this: URL? = nil, nextPage: URL? = nil, isLastPage: Bool? = nil) {
        self.values = values
        self.since = since
        self.until = until
        self.this = this
        self.nextPage = nextPage
        self.isLastPage = isLastPage
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.values = try values.decodeIfPresent([ChangedWorklog].self, forKey: "values")
        self.since = try values.decodeIfPresent(Int.self, forKey: "since")
        self.until = try values.decodeIfPresent(Int.self, forKey: "until")
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.nextPage = try values.decodeIfPresent(URL.self, forKey: "nextPage")
        self.isLastPage = try values.decodeIfPresent(Bool.self, forKey: "lastPage")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(self.values, forKey: "values")
        try values.encodeIfPresent(since, forKey: "since")
        try values.encodeIfPresent(until, forKey: "until")
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(nextPage, forKey: "nextPage")
        try values.encodeIfPresent(isLastPage, forKey: "lastPage")
    }
}
