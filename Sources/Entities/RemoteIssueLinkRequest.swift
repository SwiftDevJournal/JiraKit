// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a remote issue link.
public struct RemoteIssueLinkRequest: Codable {
    /// An identifier for the remote item in the remote system. For example, the global ID for a remote item in Confluence would consist of the app ID and page ID, like this: `appId=456&pageId=123`.
    /// 
    /// Setting this field enables the remote issue link details to be updated or deleted using remote system and item details as the record identifier, rather than using the record's Jira ID.
    /// 
    /// The maximum length is 255 characters.
    public var globalID: String?
    /// Details of the remote application the linked item is in. For example, trello.
    public var application: Application?
    /// Description of the relationship between the issue and the linked item. If not set, the relationship description "links to" is used in Jira.
    public var relationship: String?
    /// Details of the item linked to.
    public var object: RemoteObject

    public init(globalID: String? = nil, application: Application? = nil, relationship: String? = nil, object: RemoteObject) {
        self.globalID = globalID
        self.application = application
        self.relationship = relationship
        self.object = object
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.globalID = try values.decodeIfPresent(String.self, forKey: "globalId")
        self.application = try values.decodeIfPresent(Application.self, forKey: "application")
        self.relationship = try values.decodeIfPresent(String.self, forKey: "relationship")
        self.object = try values.decode(RemoteObject.self, forKey: "object")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(globalID, forKey: "globalId")
        try values.encodeIfPresent(application, forKey: "application")
        try values.encodeIfPresent(relationship, forKey: "relationship")
        try values.encode(object, forKey: "object")
    }
}
