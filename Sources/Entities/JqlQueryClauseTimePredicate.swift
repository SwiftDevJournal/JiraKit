// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A time predicate for a temporal JQL clause.
public struct JqlQueryClauseTimePredicate: Codable {
    /// The operator between the field and the operand.
    public var `operator`: Operator
    /// Details of an operand in a JQL clause.
    public var operand: JqlQueryClauseOperand

    /// The operator between the field and the operand.
    public enum Operator: String, Codable, CaseIterable {
        case before
        case after
        case from
        case to
        case on
        case during
        case by
    }

    public init(`operator`: Operator, operand: JqlQueryClauseOperand) {
        self.operator = `operator`
        self.operand = operand
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.operator = try values.decode(Operator.self, forKey: "operator")
        self.operand = try values.decode(JqlQueryClauseOperand.self, forKey: "operand")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(`operator`, forKey: "operator")
        try values.encode(operand, forKey: "operand")
    }
}
