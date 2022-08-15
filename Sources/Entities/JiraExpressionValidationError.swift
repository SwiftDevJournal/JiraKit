// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about syntax and type errors. The error details apply to the entire expression, unless the object includes:
/// 
///  *  `line` and `column`
///  *  `expression`
public struct JiraExpressionValidationError: Codable {
    /// The text line in which the error occurred.
    public var line: Int?
    /// The text column in which the error occurred.
    public var column: Int?
    /// The part of the expression in which the error occurred.
    public var expression: String?
    /// Details about the error.
    ///
    /// Example: "!, -, typeof, (, IDENTIFIER, null, true, false, NUMBER, STRING, TEMPLATE_LITERAL, new, [ or { expected, > encountered."
    public var message: String
    /// The error type.
    public var type: `Type`

    /// The error type.
    public enum `Type`: String, Codable, CaseIterable {
        case syntax
        case type
        case other
    }

    public init(line: Int? = nil, column: Int? = nil, expression: String? = nil, message: String, type: `Type`) {
        self.line = line
        self.column = column
        self.expression = expression
        self.message = message
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.line = try values.decodeIfPresent(Int.self, forKey: "line")
        self.column = try values.decodeIfPresent(Int.self, forKey: "column")
        self.expression = try values.decodeIfPresent(String.self, forKey: "expression")
        self.message = try values.decode(String.self, forKey: "message")
        self.type = try values.decode(`Type`.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(line, forKey: "line")
        try values.encodeIfPresent(column, forKey: "column")
        try values.encodeIfPresent(expression, forKey: "expression")
        try values.encode(message, forKey: "message")
        try values.encode(type, forKey: "type")
    }
}
