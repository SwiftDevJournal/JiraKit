// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct JiraExpressionEvaluationMetaDataBean: Codable {
    /// Contains information about the expression complexity. For example, the number of steps it took to evaluate the expression.
    public var complexity: JiraExpressionsComplexityBean?
    /// Contains information about the `issues` variable in the context. For example, is the issues were loaded with JQL, information about the page will be included here.
    public var issues: IssuesMetaBean?

    public init(complexity: JiraExpressionsComplexityBean? = nil, issues: IssuesMetaBean? = nil) {
        self.complexity = complexity
        self.issues = issues
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.complexity = try values.decodeIfPresent(JiraExpressionsComplexityBean.self, forKey: "complexity")
        self.issues = try values.decodeIfPresent(IssuesMetaBean.self, forKey: "issues")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(complexity, forKey: "complexity")
        try values.encodeIfPresent(issues, forKey: "issues")
    }
}