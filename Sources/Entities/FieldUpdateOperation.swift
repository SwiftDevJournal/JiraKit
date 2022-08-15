// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of an operation to perform on a field.
public struct FieldUpdateOperation: Codable {
    /// The value to add to the field.
    ///
    /// Example: "triaged"
    public var add: AnyJSON?
    /// The value to set in the field.
    ///
    /// Example: "A new summary"
    public var set: AnyJSON?
    /// The value to removed from the field.
    ///
    /// Example: "blocker"
    public var remove: AnyJSON?
    /// The value to edit in the field.
    ///
    /// Example:
    ///
    /// {
    ///   "originalEstimate" : "1w 1d",
    ///   "remainingEstimate" : "4d"
    /// }
    public var edit: AnyJSON?

    public init(add: AnyJSON? = nil, set: AnyJSON? = nil, remove: AnyJSON? = nil, edit: AnyJSON? = nil) {
        self.add = add
        self.set = set
        self.remove = remove
        self.edit = edit
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.add = try values.decodeIfPresent(AnyJSON.self, forKey: "add")
        self.set = try values.decodeIfPresent(AnyJSON.self, forKey: "set")
        self.remove = try values.decodeIfPresent(AnyJSON.self, forKey: "remove")
        self.edit = try values.decodeIfPresent(AnyJSON.self, forKey: "edit")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(add, forKey: "add")
        try values.encodeIfPresent(set, forKey: "set")
        try values.encodeIfPresent(remove, forKey: "remove")
        try values.encodeIfPresent(edit, forKey: "edit")
    }
}
