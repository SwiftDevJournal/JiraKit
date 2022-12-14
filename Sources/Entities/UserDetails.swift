// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// User details permitted by the user's Atlassian Account privacy settings. However, be aware of these exceptions:
/// 
///  *  User record deleted from Atlassian: This occurs as the result of a right to be forgotten request. In this case, `displayName` provides an indication and other parameters have default values or are blank (for example, email is blank).
///  *  User record corrupted: This occurs as a results of events such as a server import and can only happen to deleted users. In this case, `accountId` returns *unknown* and all other parameters have fallback values.
///  *  User record unavailable: This usually occurs due to an internal service outage. In this case, all parameters have fallback values.
public struct UserDetails: Codable {
    /// The URL of the user.
    public var this: String?
    /// This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
    public var name: String?
    /// This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
    public var key: String?
    /// The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
    public var accountID: String?
    /// The email address of the user. Depending on the user’s privacy settings, this may be returned as null.
    public var emailAddress: String?
    /// The avatars of the user.
    public var avatarURLs: AvatarURLsBean?
    /// The display name of the user. Depending on the user’s privacy settings, this may return an alternative value.
    public var displayName: String?
    /// Whether the user is active.
    public var isActive: Bool?
    /// The time zone specified in the user's profile. Depending on the user’s privacy settings, this may be returned as null.
    public var timeZone: String?
    /// The type of account represented by this user. This will be one of 'atlassian' (normal users), 'app' (application user) or 'customer' (Jira Service Desk customer user)
    public var accountType: String?

    public init(this: String? = nil, name: String? = nil, key: String? = nil, accountID: String? = nil, emailAddress: String? = nil, avatarURLs: AvatarURLsBean? = nil, displayName: String? = nil, isActive: Bool? = nil, timeZone: String? = nil, accountType: String? = nil) {
        self.this = this
        self.name = name
        self.key = key
        self.accountID = accountID
        self.emailAddress = emailAddress
        self.avatarURLs = avatarURLs
        self.displayName = displayName
        self.isActive = isActive
        self.timeZone = timeZone
        self.accountType = accountType
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(String.self, forKey: "self")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
        self.accountID = try values.decodeIfPresent(String.self, forKey: "accountId")
        self.emailAddress = try values.decodeIfPresent(String.self, forKey: "emailAddress")
        self.avatarURLs = try values.decodeIfPresent(AvatarURLsBean.self, forKey: "avatarUrls")
        self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
        self.isActive = try values.decodeIfPresent(Bool.self, forKey: "active")
        self.timeZone = try values.decodeIfPresent(String.self, forKey: "timeZone")
        self.accountType = try values.decodeIfPresent(String.self, forKey: "accountType")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(key, forKey: "key")
        try values.encodeIfPresent(accountID, forKey: "accountId")
        try values.encodeIfPresent(emailAddress, forKey: "emailAddress")
        try values.encodeIfPresent(avatarURLs, forKey: "avatarUrls")
        try values.encodeIfPresent(displayName, forKey: "displayName")
        try values.encodeIfPresent(isActive, forKey: "active")
        try values.encodeIfPresent(timeZone, forKey: "timeZone")
        try values.encodeIfPresent(accountType, forKey: "accountType")
    }
}
