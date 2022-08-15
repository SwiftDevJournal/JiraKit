// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var events: Events {
        Events(path: path + "/events")
    }

    public struct Events {
        /// Path: `/rest/api/3/events`
        public let path: String

        /// Get events
        ///
        /// Returns all issue events.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var get: Request<[JiraKit.IssueEvent]> {
            Request(method: "GET", url: path, id: "getEvents")
        }
    }
}