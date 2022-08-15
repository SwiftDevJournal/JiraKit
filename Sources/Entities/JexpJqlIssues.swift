// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The JQL specifying the issues available in the evaluated Jira expression under the `issues` context variable. Not all issues returned by the JQL query are loaded, only those described by the `startAt` and `maxResults` properties. To determine whether it is necessary to iterate to ensure all the issues returned by the JQL query are evaluated, inspect `meta.issues.jql.count` in the response.
public struct JexpJqlIssues: Codable {
    /// The JQL query.
    public var query: String?
    /// The index of the first issue to return from the JQL query.
    public var startAt: Int?
    /// The maximum number of issues to return from the JQL query. Inspect `meta.issues.jql.maxResults` in the response to ensure the maximum value has not been exceeded.
    public var maxResults: Int?
    /// Determines how to validate the JQL query and treat the validation results.
    public var validation: Validation?

    /// Determines how to validate the JQL query and treat the validation results.
    public enum Validation: String, Codable, CaseIterable {
        case strict
        case warn
        case `none`
    }

    public init(query: String? = nil, startAt: Int? = nil, maxResults: Int? = nil, validation: Validation? = nil) {
        self.query = query
        self.startAt = startAt
        self.maxResults = maxResults
        self.validation = validation
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.query = try values.decodeIfPresent(String.self, forKey: "query")
        self.startAt = try values.decodeIfPresent(Int.self, forKey: "startAt")
        self.maxResults = try values.decodeIfPresent(Int.self, forKey: "maxResults")
        self.validation = try values.decodeIfPresent(Validation.self, forKey: "validation")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(query, forKey: "query")
        try values.encodeIfPresent(startAt, forKey: "startAt")
        try values.encodeIfPresent(maxResults, forKey: "maxResults")
        try values.encodeIfPresent(validation, forKey: "validation")
    }
}
