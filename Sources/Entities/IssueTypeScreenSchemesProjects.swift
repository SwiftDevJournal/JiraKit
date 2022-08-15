// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Issue type screen scheme with a list of the projects that use it.
public struct IssueTypeScreenSchemesProjects: Codable {
    /// Details of an issue type screen scheme.
    public var issueTypeScreenScheme: IssueTypeScreenScheme
    /// The IDs of the projects using the issue type screen scheme.
    public var projectIDs: [String]

    public init(issueTypeScreenScheme: IssueTypeScreenScheme, projectIDs: [String]) {
        self.issueTypeScreenScheme = issueTypeScreenScheme
        self.projectIDs = projectIDs
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.issueTypeScreenScheme = try values.decode(IssueTypeScreenScheme.self, forKey: "issueTypeScreenScheme")
        self.projectIDs = try values.decode([String].self, forKey: "projectIds")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(issueTypeScreenScheme, forKey: "issueTypeScreenScheme")
        try values.encode(projectIDs, forKey: "projectIds")
    }
}
