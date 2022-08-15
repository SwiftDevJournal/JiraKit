// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A workflow scheme along with a list of projects that use it.
public struct WorkflowSchemeAssociations: Codable {
    /// The list of projects that use the workflow scheme.
    public var projectIDs: [String]
    /// The workflow scheme.
    public var workflowScheme: WorkflowScheme

    public init(projectIDs: [String], workflowScheme: WorkflowScheme) {
        self.projectIDs = projectIDs
        self.workflowScheme = workflowScheme
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.projectIDs = try values.decode([String].self, forKey: "projectIds")
        self.workflowScheme = try values.decode(WorkflowScheme.self, forKey: "workflowScheme")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(projectIDs, forKey: "projectIds")
        try values.encode(workflowScheme, forKey: "workflowScheme")
    }
}
