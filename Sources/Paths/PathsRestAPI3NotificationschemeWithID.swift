// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Notificationscheme {
    public func id(_ id: Int) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/notificationscheme/{id}`
        public let path: String

        /// Get notification scheme
        ///
        /// Returns a [notification scheme](https://confluence.atlassian.com/x/8YdKLg), including the list of events and the recipients who will receive notifications for those events.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira, however the user must have permission to administer at least one project associated with the notification scheme.
        public func get(expand: String? = nil) -> Request<JiraKit.NotificationScheme> {
            Request(path: path, method: "GET", query: makeGetQuery(expand), id: "getNotificationScheme")
        }

        private func makeGetQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }
    }
}
