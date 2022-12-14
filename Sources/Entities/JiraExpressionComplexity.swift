// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about the complexity of the analysed Jira expression.
public struct JiraExpressionComplexity: Codable {
    /// Information that can be used to determine how many [expensive operations](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/#expensive-operations) the evaluation of the expression will perform. This information may be a formula or number. For example:
    /// 
    ///  *  `issues.map(i => i.comments)` performs as many expensive operations as there are issues on the issues list. So this parameter returns `N`, where `N` is the size of issue list.
    ///  *  `new Issue(10010).comments` gets comments for one issue, so its complexity is `2` (`1` to retrieve issue 10010 from the database plus `1` to get its comments).
    public var expensiveOperations: String
    /// Variables used in the formula, mapped to the parts of the expression they refer to.
    public var variables: [String: String]?

    public init(expensiveOperations: String, variables: [String: String]? = nil) {
        self.expensiveOperations = expensiveOperations
        self.variables = variables
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.expensiveOperations = try values.decode(String.self, forKey: "expensiveOperations")
        self.variables = try values.decodeIfPresent([String: String].self, forKey: "variables")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(expensiveOperations, forKey: "expensiveOperations")
        try values.encodeIfPresent(variables, forKey: "variables")
    }
}
