// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of how to filter and list search auto complete information.
public struct SearchAutoCompleteFilter: Codable {
    /// List of project IDs used to filter the visible field details returned.
    public var projectIDs: [Int64]?
    /// Include collapsed fields for fields that have non-unique names.
    public var isIncludeCollapsedFields: Bool

    public init(projectIDs: [Int64]? = nil, isIncludeCollapsedFields: Bool? = nil) {
        self.projectIDs = projectIDs
        self.isIncludeCollapsedFields = isIncludeCollapsedFields ?? false
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.projectIDs = try values.decodeIfPresent([Int64].self, forKey: "projectIds")
        self.isIncludeCollapsedFields = try values.decodeIfPresent(Bool.self, forKey: "includeCollapsedFields") ?? false
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(projectIDs, forKey: "projectIds")
        try values.encodeIfPresent(isIncludeCollapsedFields, forKey: "includeCollapsedFields")
    }
}
