// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Users {
    public var search: Search {
        Search(path: path + "/search")
    }

    public struct Search {
        /// Path: `/rest/api/3/users/search`
        public let path: String

        /// Get all users
        ///
        /// Returns a list of all users, including active users, inactive users and previously deleted users that have an Atlassian account.
        /// 
        /// Privacy controls are applied to the response based on the users' preferences. This could mean, for example, that the user's email address is hidden. See the [Profile visibility overview](https://developer.atlassian.com/cloud/jira/platform/profile-visibility/) for more details.
        /// 
        /// **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(startAt: Int32? = nil, maxResults: Int32? = nil) -> Request<[JiraKit.User]> {
            Request(path: path, method: "GET", query: makeGetQuery(startAt, maxResults), id: "getAllUsers")
        }

        private func makeGetQuery(_ startAt: Int32?, _ maxResults: Int32?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(startAt, forKey: "startAt")
            encoder.encode(maxResults, forKey: "maxResults")
            return encoder.items
        }
    }
}
