// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A comment.
public struct Comment: Codable {
    /// The URL of the comment.
    public var this: String?
    /// The ID of the comment.
    public var id: String?
    /// The ID of the user who created the comment.
    public var author: UserDetails?
    /// The comment text in [Atlassian Document Format](https://developer.atlassian.com/cloud/jira/platform/apis/document/structure/).
    public var body: AnyJSON?
    /// The rendered version of the comment.
    public var renderedBody: String?
    /// The ID of the user who updated the comment last.
    public var updateAuthor: UserDetails?
    /// The date and time at which the comment was created.
    public var created: Date?
    /// The date and time at which the comment was updated last.
    public var updated: Date?
    /// The group or role to which this comment is visible. Optional on create and update.
    public var visibility: Visibility?
    /// Whether the comment is visible in Jira Service Desk. Defaults to true when comments are created in the Jira Cloud Platform. This includes when the site doesn't use Jira Service Desk or the project isn't a Jira Service Desk project and, therefore, there is no Jira Service Desk for the issue to be visible on. To create a comment with its visibility in Jira Service Desk set to false, use the Jira Service Desk REST API [Create request comment](https://developer.atlassian.com/cloud/jira/service-desk/rest/#api-rest-servicedeskapi-request-issueIdOrKey-comment-post) operation.
    public var isJsdPublic: Bool?
    /// Whether the comment was added from an email sent by a person who is not part of the issue. See [Allow external emails to be added as comments on issues](https://support.atlassian.com/jira-service-management-cloud/docs/allow-external-emails-to-be-added-as-comments-on-issues/)for information on setting up this feature.
    public var jsdAuthorCanSeeRequest: Bool?
    /// A list of comment properties. Optional on create and update.
    public var properties: [EntityProperty]?

    public init(this: String? = nil, id: String? = nil, author: UserDetails? = nil, body: AnyJSON? = nil, renderedBody: String? = nil, updateAuthor: UserDetails? = nil, created: Date? = nil, updated: Date? = nil, visibility: Visibility? = nil, isJsdPublic: Bool? = nil, jsdAuthorCanSeeRequest: Bool? = nil, properties: [EntityProperty]? = nil) {
        self.this = this
        self.id = id
        self.author = author
        self.body = body
        self.renderedBody = renderedBody
        self.updateAuthor = updateAuthor
        self.created = created
        self.updated = updated
        self.visibility = visibility
        self.isJsdPublic = isJsdPublic
        self.jsdAuthorCanSeeRequest = jsdAuthorCanSeeRequest
        self.properties = properties
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(String.self, forKey: "self")
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.author = try values.decodeIfPresent(UserDetails.self, forKey: "author")
        self.body = try values.decodeIfPresent(AnyJSON.self, forKey: "body")
        self.renderedBody = try values.decodeIfPresent(String.self, forKey: "renderedBody")
        self.updateAuthor = try values.decodeIfPresent(UserDetails.self, forKey: "updateAuthor")
        self.created = try values.decodeIfPresent(Date.self, forKey: "created")
        self.updated = try values.decodeIfPresent(Date.self, forKey: "updated")
        self.visibility = try values.decodeIfPresent(Visibility.self, forKey: "visibility")
        self.isJsdPublic = try values.decodeIfPresent(Bool.self, forKey: "jsdPublic")
        self.jsdAuthorCanSeeRequest = try values.decodeIfPresent(Bool.self, forKey: "jsdAuthorCanSeeRequest")
        self.properties = try values.decodeIfPresent([EntityProperty].self, forKey: "properties")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(author, forKey: "author")
        try values.encodeIfPresent(body, forKey: "body")
        try values.encodeIfPresent(renderedBody, forKey: "renderedBody")
        try values.encodeIfPresent(updateAuthor, forKey: "updateAuthor")
        try values.encodeIfPresent(created, forKey: "created")
        try values.encodeIfPresent(updated, forKey: "updated")
        try values.encodeIfPresent(visibility, forKey: "visibility")
        try values.encodeIfPresent(isJsdPublic, forKey: "jsdPublic")
        try values.encodeIfPresent(jsdAuthorCanSeeRequest, forKey: "jsdAuthorCanSeeRequest")
        try values.encodeIfPresent(properties, forKey: "properties")
    }
}
