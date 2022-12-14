// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A JQL query clause.
public struct JqlQueryClause: Codable {
    /// A JQL query clause that consists of nested clauses. For example, `(labels in (urgent, blocker) OR lastCommentedBy = currentUser()). Note that, where nesting is not defined, the parser nests JQL clauses based on the operator precedence. For example, "A OR B AND C" is parsed as "(A OR B) AND C". See Setting the precedence of operators for more information about precedence in JQL queries.`
    public var compoundClause: CompoundClause?
    /// A clause that asserts the current value of a field. For example, `summary ~ test`.
    public var fieldValueClause: FieldValueClause?
    /// A clause that asserts a previous value of a field. For example, `status WAS "Resolved" BY currentUser() BEFORE "2019/02/02"`. See [WAS](https://confluence.atlassian.com/x/dgiiLQ#Advancedsearching-operatorsreference-WASWAS) for more information about the WAS operator.
    public var fieldWasClause: FieldWasClause?
    /// A clause that asserts whether a field was changed. For example, `status CHANGED AFTER startOfMonth(-1M)`.See [CHANGED](https://confluence.atlassian.com/x/dgiiLQ#Advancedsearching-operatorsreference-CHANGEDCHANGED) for more information about the CHANGED operator.
    public var fieldChangedClause: FieldChangedClause?

    public init(compoundClause: CompoundClause? = nil, fieldValueClause: FieldValueClause? = nil, fieldWasClause: FieldWasClause? = nil, fieldChangedClause: FieldChangedClause? = nil) {
        self.compoundClause = compoundClause
        self.fieldValueClause = fieldValueClause
        self.fieldWasClause = fieldWasClause
        self.fieldChangedClause = fieldChangedClause
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.compoundClause = try? container.decode(CompoundClause.self)
        self.fieldValueClause = try? container.decode(FieldValueClause.self)
        self.fieldWasClause = try? container.decode(FieldWasClause.self)
        self.fieldChangedClause = try? container.decode(FieldChangedClause.self)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        if let value = compoundClause { try container.encode(value) }
        if let value = fieldValueClause { try container.encode(value) }
        if let value = fieldWasClause { try container.encode(value) }
        if let value = fieldChangedClause { try container.encode(value) }
    }
}
