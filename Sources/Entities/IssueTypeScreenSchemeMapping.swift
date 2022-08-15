// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The IDs of the screen schemes for the issue type IDs.
public struct IssueTypeScreenSchemeMapping: Codable {
    /// The ID of the issue type or *default*. Only issue types used in classic projects are accepted. An entry for *default* must be provided and defines the mapping for all issue types without a screen scheme.
    public var issueTypeID: String
    /// The ID of the screen scheme. Only screen schemes used in classic projects are accepted.
    public var screenSchemeID: String

    public init(issueTypeID: String, screenSchemeID: String) {
        self.issueTypeID = issueTypeID
        self.screenSchemeID = screenSchemeID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.issueTypeID = try values.decode(String.self, forKey: "issueTypeId")
        self.screenSchemeID = try values.decode(String.self, forKey: "screenSchemeId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(issueTypeID, forKey: "issueTypeId")
        try values.encode(screenSchemeID, forKey: "screenSchemeId")
    }
}
