// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A list of project IDs.
public struct ProjectIDs: Codable {
    /// The IDs of projects.
    public var projectIDs: [String]

    public init(projectIDs: [String]) {
        self.projectIDs = projectIDs
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.projectIDs = try values.decode([String].self, forKey: "projectIds")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(projectIDs, forKey: "projectIds")
    }
}
