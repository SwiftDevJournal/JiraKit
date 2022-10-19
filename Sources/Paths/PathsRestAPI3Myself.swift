// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var myself: Myself {
        Myself(path: path + "/myself")
    }

    public struct Myself {
        /// Path: `/rest/api/3/myself`
        public let path: String

        /// Get current user
        ///
        /// Returns details for the current user.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public func get(expand: String? = nil) -> Request<JiraKit.User> {
            Request(path: path, method: "GET", query: makeGetQuery(expand), id: "getCurrentUser")
        }

        private func makeGetQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }
    }
}
