// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The details of votes on an issue.
public struct Votes: Codable {
    /// The URL of these issue vote details.
    public var this: URL?
    /// The number of votes on the issue.
    public var votes: Int?
    /// Whether the user making this request has voted on the issue.
    public var hasVoted: Bool?
    /// List of the users who have voted on this issue. An empty list is returned when the calling user doesn't have the *View voters and watchers* project permission.
    public var voters: [User]?

    public init(this: URL? = nil, votes: Int? = nil, hasVoted: Bool? = nil, voters: [User]? = nil) {
        self.this = this
        self.votes = votes
        self.hasVoted = hasVoted
        self.voters = voters
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.votes = try values.decodeIfPresent(Int.self, forKey: "votes")
        self.hasVoted = try values.decodeIfPresent(Bool.self, forKey: "hasVoted")
        self.voters = try values.decodeIfPresent([User].self, forKey: "voters")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(votes, forKey: "votes")
        try values.encodeIfPresent(hasVoted, forKey: "hasVoted")
        try values.encodeIfPresent(voters, forKey: "voters")
    }
}