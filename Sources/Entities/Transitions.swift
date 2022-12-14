// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// List of issue transitions.
public struct Transitions: Codable {
    /// Expand options that include additional transitions details in the response.
    public var expand: String?
    /// List of issue transitions.
    public var transitions: [IssueTransition]?

    public init(expand: String? = nil, transitions: [IssueTransition]? = nil) {
        self.expand = expand
        self.transitions = transitions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.expand = try values.decodeIfPresent(String.self, forKey: "expand")
        self.transitions = try values.decodeIfPresent([IssueTransition].self, forKey: "transitions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(expand, forKey: "expand")
        try values.encodeIfPresent(transitions, forKey: "transitions")
    }
}
