// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A list of projects in which a user is granted permissions.
public struct PermittedProjects: Codable {
    /// A list of projects.
    public var projects: [ProjectIdentifierBean]?

    public init(projects: [ProjectIdentifierBean]? = nil) {
        self.projects = projects
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.projects = try values.decodeIfPresent([ProjectIdentifierBean].self, forKey: "projects")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(projects, forKey: "projects")
    }
}