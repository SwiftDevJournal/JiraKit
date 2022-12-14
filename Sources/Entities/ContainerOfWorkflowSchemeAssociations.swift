// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A container for a list of workflow schemes together with the projects they are associated with.
public struct ContainerOfWorkflowSchemeAssociations: Codable {
    /// A list of workflow schemes together with projects they are associated with.
    public var values: [WorkflowSchemeAssociations]

    public init(values: [WorkflowSchemeAssociations]) {
        self.values = values
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.values = try values.decode([WorkflowSchemeAssociations].self, forKey: "values")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(self.values, forKey: "values")
    }
}
