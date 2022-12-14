// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Statuscategory {
    public func idOrKey(_ idOrKey: String) -> WithIDOrKey {
        WithIDOrKey(path: "\(path)/\(idOrKey)")
    }

    public struct WithIDOrKey {
        /// Path: `/rest/api/3/statuscategory/{idOrKey}`
        public let path: String

        /// Get status category
        ///
        /// Returns a status category. Status categories provided a mechanism for categorizing [statuses](#api-rest-api-3-status-idOrName-get).
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public var get: Request<JiraKit.StatusCategory> {
            Request(path: path, method: "GET", id: "getStatusCategory")
        }
    }
}
