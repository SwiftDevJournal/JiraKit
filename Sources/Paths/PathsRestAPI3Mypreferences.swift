// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var mypreferences: Mypreferences {
        Mypreferences(path: path + "/mypreferences")
    }

    public struct Mypreferences {
        /// Path: `/rest/api/3/mypreferences`
        public let path: String

        /// Get preference
        ///
        /// Returns the value of a preference of the current user.
        /// 
        /// Note that these keys are deprecated:
        /// 
        ///  *  *jira.user.locale* The locale of the user. By default this is not set and the user takes the locale of the instance.
        ///  *  *jira.user.timezone* The time zone of the user. By default this is not set and the user takes the timezone of the instance.
        /// 
        /// Use [ Update a user profile](https://developer.atlassian.com/cloud/admin/user-management/rest/#api-users-account-id-manage-profile-patch) from the user management REST API to manage timezone and locale instead.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public func get(key: String) -> Request<String> {
            Request(path: path, method: "GET", query: [("key", key)], id: "getPreference")
        }

        /// Set preference
        ///
        /// Creates a preference for the user or updates a preference's value by sending a plain text string. For example, `false`. An arbitrary preference can be created with the value containing up to 255 characters. In addition, the following keys define system preferences that can be set or created:
        /// 
        ///  *  *user.notifications.mimetype* The mime type used in notifications sent to the user. Defaults to `html`.
        ///  *  *user.notify.own.changes* Whether the user gets notified of their own changes. Defaults to `false`.
        ///  *  *user.default.share.private* Whether new [ filters](https://confluence.atlassian.com/x/eQiiLQ) are set to private. Defaults to `true`.
        ///  *  *user.keyboard.shortcuts.disabled* Whether keyboard shortcuts are disabled. Defaults to `false`.
        ///  *  *user.autowatch.disabled* Whether the user automatically watches issues they create or add a comment to. By default, not set: the user takes the instance autowatch setting.
        /// 
        /// Note that these keys are deprecated:
        /// 
        ///  *  *jira.user.locale* The locale of the user. By default, not set. The user takes the instance locale.
        ///  *  *jira.user.timezone* The time zone of the user. By default, not set. The user takes the instance timezone.
        /// 
        /// Use [ Update a user profile](https://developer.atlassian.com/cloud/admin/user-management/rest/#api-users-account-id-manage-profile-patch) from the user management REST API to manage timezone and locale instead.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public func put(key: String, _ body: String) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", query: [("key", key)], body: body, id: "setPreference")
        }

        /// Delete preference
        ///
        /// Deletes a preference of the user, which restores the default value of system defined settings.
        /// 
        /// Note that these keys are deprecated:
        /// 
        ///  *  *jira.user.locale* The locale of the user. By default, not set. The user takes the instance locale.
        ///  *  *jira.user.timezone* The time zone of the user. By default, not set. The user takes the instance timezone.
        /// 
        /// Use [ Update a user profile](https://developer.atlassian.com/cloud/admin/user-management/rest/#api-users-account-id-manage-profile-patch) from the user management REST API to manage timezone and locale instead.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public func delete(key: String) -> Request<Void> {
            Request(path: path, method: "DELETE", query: [("key", key)], id: "removePreference")
        }
    }
}
