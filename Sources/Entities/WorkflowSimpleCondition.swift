// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A workflow transition rule condition. This object returns `nodeType` as `simple`.
public struct WorkflowSimpleCondition: Codable {
    /// The type of the transition rule.
    public var type: String
    /// EXPERIMENTAL. The configuration of the transition rule.
    public var configuration: [String: AnyJSON]?
    public var nodeType: String

    public init(type: String, configuration: [String: AnyJSON]? = nil, nodeType: String) {
        self.type = type
        self.configuration = configuration
        self.nodeType = nodeType
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(String.self, forKey: "type")
        self.configuration = try values.decodeIfPresent([String: AnyJSON].self, forKey: "configuration")
        self.nodeType = try values.decode(String.self, forKey: "nodeType")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(configuration, forKey: "configuration")
        try values.encode(nodeType, forKey: "nodeType")
    }
}