// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var notificationscheme: Notificationscheme {
        Notificationscheme(path: path + "/notificationscheme")
    }

    public struct Notificationscheme {
        /// Path: `/rest/api/3/notificationscheme`
        public let path: String

        /// Get notification schemes paginated
        ///
        /// Returns a [paginated](#pagination) list of [notification schemes](https://confluence.atlassian.com/x/8YdKLg) ordered by display name.
        /// 
        /// ### About notification schemes ###
        /// 
        /// A notification scheme is a list of events and recipients who will receive notifications for those events. The list is contained within the `notificationSchemeEvents` object and contains pairs of `events` and `notifications`:
        /// 
        ///  *  `event` Identifies the type of event. The events can be [Jira system events](https://confluence.atlassian.com/x/8YdKLg#Creatinganotificationscheme-eventsEvents) or [custom events](https://confluence.atlassian.com/x/AIlKLg).
        ///  *  `notifications` Identifies the [recipients](https://confluence.atlassian.com/x/8YdKLg#Creatinganotificationscheme-recipientsRecipients) of notifications for each event. Recipients can be any of the following types:
        ///     
        ///      *  `CurrentAssignee`
        ///      *  `Reporter`
        ///      *  `CurrentUser`
        ///      *  `ProjectLead`
        ///      *  `ComponentLead`
        ///      *  `User` (the `parameter` is the user key)
        ///      *  `Group` (the `parameter` is the group name)
        ///      *  `ProjectRole` (the `parameter` is the project role ID)
        ///      *  `EmailAddress`
        ///      *  `AllWatchers`
        ///      *  `UserCustomField` (the `parameter` is the ID of the custom field)
        ///      *  `GroupCustomField`(the `parameter` is the ID of the custom field)
        /// 
        /// *Note that you should allow for events without recipients to appear in responses.*
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira, however the user must have permission to administer at least one project associated with a notification scheme for it to be returned.
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanNotificationScheme> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getNotificationSchemes")
        }

        public struct GetParameters {
            public var startAt: Int64?
            public var maxResults: Int32?
            public var expand: String?

            public init(startAt: Int64? = nil, maxResults: Int32? = nil, expand: String? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
