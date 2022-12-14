// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about a notification event.
public final class NotificationEvent: Codable {
    /// The ID of the event. The event can be a [Jira system event](https://confluence.atlassian.com/x/8YdKLg#Creatinganotificationscheme-eventsEvents) or a [custom event](https://confluence.atlassian.com/x/AIlKLg).
    public let id: Int64?
    /// The name of the event.
    public let name: String?
    /// The description of the event.
    public let description: String?
    /// The template of the event. Only custom events configured by Jira administrators have template.
    public let templateEvent: NotificationEvent?

    public init(id: Int64? = nil, name: String? = nil, description: String? = nil, templateEvent: NotificationEvent? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.templateEvent = templateEvent
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int64.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.templateEvent = try values.decodeIfPresent(NotificationEvent.self, forKey: "templateEvent")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(templateEvent, forKey: "templateEvent")
    }
}
