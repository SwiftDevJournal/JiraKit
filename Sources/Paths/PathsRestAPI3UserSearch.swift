// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.User {
    public var search: Search {
        Search(path: path + "/search")
    }

    public struct Search {
        /// Path: `/rest/api/3/user/search`
        public let path: String

        /// Find users
        ///
        /// Returns a list of users that match the search string and property.
        /// 
        /// This operation first applies a filter to match the search string and property, and then takes the filtered users in the range defined by `startAt` and `maxResults`, up to the thousandth user. To get all the users who match the search string and property, use [Get all users](#api-rest-api-3-users-search-get) and filter the records in your code.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// Privacy controls are applied to the response based on the users' preferences. This could mean, for example, that the user's email address is hidden. See the [Profile visibility overview](https://developer.atlassian.com/cloud/jira/platform/profile-visibility/) for more details.
        /// 
        /// **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg). Anonymous calls or calls by users without the required permission return empty search results.
        public func get(parameters: GetParameters? = nil) -> Request<[JiraKit.User]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "findUsers")
        }

        public struct GetParameters {
            /// Example: "query"
            public var query: String?
            public var username: String?
            public var accountID: String?
            public var startAt: Int32?
            public var maxResults: Int32?
            public var property: String?

            public init(query: String? = nil, username: String? = nil, accountID: String? = nil, startAt: Int32? = nil, maxResults: Int32? = nil, property: String? = nil) {
                self.query = query
                self.username = username
                self.accountID = accountID
                self.startAt = startAt
                self.maxResults = maxResults
                self.property = property
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(query, forKey: "query")
                encoder.encode(username, forKey: "username")
                encoder.encode(accountID, forKey: "accountId")
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(property, forKey: "property")
                return encoder.items
            }
        }
    }
}
