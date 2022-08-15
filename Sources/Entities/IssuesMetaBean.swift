// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Meta data describing the `issues` context variable.
public struct IssuesMetaBean: Codable {
    /// The description of the page of issues loaded by the provided JQL query.
    public var jql: IssuesJqlMetaDataBean?

    public init(jql: IssuesJqlMetaDataBean? = nil) {
        self.jql = jql
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.jql = try values.decodeIfPresent(IssuesJqlMetaDataBean.self, forKey: "jql")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(jql, forKey: "jql")
    }
}
