// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about a filter.
public struct Filter: Codable {
    /// The URL of the filter.
    public var this: URL?
    /// The unique identifier for the filter.
    public var id: String?
    /// The name of the filter. Must be unique.
    public var name: String
    /// A description of the filter.
    public var description: String?
    /// The user who owns the filter. This is defaulted to the creator of the filter, however Jira administrators can change the owner of a shared filter in the admin settings.
    public var owner: User?
    /// The JQL query for the filter. For example, *project = SSP AND issuetype = Bug*.
    public var jql: String?
    /// A URL to view the filter results in Jira, using the ID of the filter. For example, *https://your-domain.atlassian.net/issues/?filter=10100*.
    public var viewURL: URL?
    /// A URL to view the filter results in Jira, using the [Search for issues using JQL](#api-rest-api-3-filter-search-get) operation with the filter's JQL string to return the filter results. For example, *https://your-domain.atlassian.net/rest/api/3/search?jql=project+%3D+SSP+AND+issuetype+%3D+Bug*.
    public var searchURL: URL?
    /// Whether the filter is selected as a favorite.
    public var isFavourite: Bool?
    /// The count of how many users have selected this filter as a favorite, including the filter owner.
    public var favouritedCount: Int?
    /// The groups and projects that the filter is shared with.
    public var sharePermissions: [SharePermission]?
    /// The groups and projects that can edit the filter.
    public var editPermissions: [SharePermission]?
    /// A paginated list of the users that the filter is shared with. This includes users that are members of the groups or can browse the projects that the filter is shared with.
    public var sharedUsers: UserList?
    /// A paginated list of the users that are subscribed to the filter.
    public var subscriptions: FilterSubscriptionsList?

    public init(this: URL? = nil, id: String? = nil, name: String, description: String? = nil, owner: User? = nil, jql: String? = nil, viewURL: URL? = nil, searchURL: URL? = nil, isFavourite: Bool? = nil, favouritedCount: Int? = nil, sharePermissions: [SharePermission]? = nil, editPermissions: [SharePermission]? = nil, sharedUsers: UserList? = nil, subscriptions: FilterSubscriptionsList? = nil) {
        self.this = this
        self.id = id
        self.name = name
        self.description = description
        self.owner = owner
        self.jql = jql
        self.viewURL = viewURL
        self.searchURL = searchURL
        self.isFavourite = isFavourite
        self.favouritedCount = favouritedCount
        self.sharePermissions = sharePermissions
        self.editPermissions = editPermissions
        self.sharedUsers = sharedUsers
        self.subscriptions = subscriptions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.owner = try values.decodeIfPresent(User.self, forKey: "owner")
        self.jql = try values.decodeIfPresent(String.self, forKey: "jql")
        self.viewURL = try values.decodeIfPresent(URL.self, forKey: "viewUrl")
        self.searchURL = try values.decodeIfPresent(URL.self, forKey: "searchUrl")
        self.isFavourite = try values.decodeIfPresent(Bool.self, forKey: "favourite")
        self.favouritedCount = try values.decodeIfPresent(Int.self, forKey: "favouritedCount")
        self.sharePermissions = try values.decodeIfPresent([SharePermission].self, forKey: "sharePermissions")
        self.editPermissions = try values.decodeIfPresent([SharePermission].self, forKey: "editPermissions")
        self.sharedUsers = try values.decodeIfPresent(UserList.self, forKey: "sharedUsers")
        self.subscriptions = try values.decodeIfPresent(FilterSubscriptionsList.self, forKey: "subscriptions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(owner, forKey: "owner")
        try values.encodeIfPresent(jql, forKey: "jql")
        try values.encodeIfPresent(viewURL, forKey: "viewUrl")
        try values.encodeIfPresent(searchURL, forKey: "searchUrl")
        try values.encodeIfPresent(isFavourite, forKey: "favourite")
        try values.encodeIfPresent(favouritedCount, forKey: "favouritedCount")
        try values.encodeIfPresent(sharePermissions, forKey: "sharePermissions")
        try values.encodeIfPresent(editPermissions, forKey: "editPermissions")
        try values.encodeIfPresent(sharedUsers, forKey: "sharedUsers")
        try values.encodeIfPresent(subscriptions, forKey: "subscriptions")
    }
}
