// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The default value for a group picker custom field.
public struct CustomFieldContextDefaultValueSingleGroupPicker: Codable {
    /// The ID of the context.
    public var contextID: String
    /// The ID of the the default group.
    public var groupID: String
    public var type: String

    public init(contextID: String, groupID: String, type: String) {
        self.contextID = contextID
        self.groupID = groupID
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.contextID = try values.decode(String.self, forKey: "contextId")
        self.groupID = try values.decode(String.self, forKey: "groupId")
        self.type = try values.decode(String.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(contextID, forKey: "contextId")
        try values.encode(groupID, forKey: "groupId")
        try values.encode(type, forKey: "type")
    }
}
