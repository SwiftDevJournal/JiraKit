// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a workflow transition.
public struct Transition: Codable {
    /// The ID of the transition.
    public var id: String
    /// The name of the transition.
    public var name: String
    /// The description of the transition.
    public var description: String
    /// The statuses the transition can start from.
    public var from: [String]
    /// The status the transition goes to.
    public var to: String
    /// The type of the transition.
    public var type: `Type`
    /// The details of a transition screen.
    public var screen: TransitionScreenDetails?
    /// A collection of transition rules.
    public var rules: WorkflowRules?
    /// The properties of the transition.
    public var properties: [String: AnyJSON]?

    /// The type of the transition.
    public enum `Type`: String, Codable, CaseIterable {
        case global
        case initial
        case directed
    }

    public init(id: String, name: String, description: String, from: [String], to: String, type: `Type`, screen: TransitionScreenDetails? = nil, rules: WorkflowRules? = nil, properties: [String: AnyJSON]? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.from = from
        self.to = to
        self.type = type
        self.screen = screen
        self.rules = rules
        self.properties = properties
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.description = try values.decode(String.self, forKey: "description")
        self.from = try values.decode([String].self, forKey: "from")
        self.to = try values.decode(String.self, forKey: "to")
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.screen = try values.decodeIfPresent(TransitionScreenDetails.self, forKey: "screen")
        self.rules = try values.decodeIfPresent(WorkflowRules.self, forKey: "rules")
        self.properties = try values.decodeIfPresent([String: AnyJSON].self, forKey: "properties")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encode(description, forKey: "description")
        try values.encode(from, forKey: "from")
        try values.encode(to, forKey: "to")
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(screen, forKey: "screen")
        try values.encodeIfPresent(rules, forKey: "rules")
        try values.encodeIfPresent(properties, forKey: "properties")
    }
}
