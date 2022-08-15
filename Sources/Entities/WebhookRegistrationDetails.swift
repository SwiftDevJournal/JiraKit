// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of webhooks to register.
public struct WebhookRegistrationDetails: Codable {
    /// A list of webhooks.
    public var webhooks: [WebhookDetails]
    /// The URL that specifies where to send the webhooks. This URL must use the same base URL as the Connect app. Only a single URL per app is allowed to be registered.
    public var url: String

    public init(webhooks: [WebhookDetails], url: String) {
        self.webhooks = webhooks
        self.url = url
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.webhooks = try values.decode([WebhookDetails].self, forKey: "webhooks")
        self.url = try values.decode(String.self, forKey: "url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(webhooks, forKey: "webhooks")
        try values.encode(url, forKey: "url")
    }
}