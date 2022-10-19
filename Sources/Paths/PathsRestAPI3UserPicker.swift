// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.User {
    public var picker: Picker {
        Picker(path: path + "/picker")
    }

    public struct Picker {
        /// Path: `/rest/api/3/user/picker`
        public let path: String

        /// Find users for picker
        ///
        /// Returns a list of users whose attributes match the query term. The returned object includes the `html` field where the matched query term is highlighted with the HTML strong tag. A list of account IDs can be provided to exclude users from the results.
        /// 
        /// This operation takes the users in the range defined by `maxResults`, up to the thousandth user, and then returns only the users from that range that match the query term. This means the operation usually returns fewer users than specified in `maxResults`. To get all the users who match the query term, use [Get all users](#api-rest-api-3-users-search-get) and filter the records in your code.
        /// 
        /// Privacy controls are applied to the response based on the users' preferences. This could mean, for example, that the user's email address is hidden. See the [Profile visibility overview](https://developer.atlassian.com/cloud/jira/platform/profile-visibility/) for more details.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg). Anonymous calls and calls by users without the required permission return search results for an exact name match only.
        public func get(parameters: GetParameters) -> Request<JiraKit.FoundUsers> {
            Request(path: path, method: "GET", query: parameters.asQuery, id: "findUsersForPicker")
        }

        public struct GetParameters {
            public var query: String
            public var maxResults: Int32?
            public var isShowAvatar: Bool?
            public var exclude: [String]?
            public var excludeAccountIDs: [String]?
            public var avatarSize: String?
            public var excludeConnectUsers: Bool?

            public init(query: String, maxResults: Int32? = nil, isShowAvatar: Bool? = nil, exclude: [String]? = nil, excludeAccountIDs: [String]? = nil, avatarSize: String? = nil, excludeConnectUsers: Bool? = nil) {
                self.query = query
                self.maxResults = maxResults
                self.isShowAvatar = isShowAvatar
                self.exclude = exclude
                self.excludeAccountIDs = excludeAccountIDs
                self.avatarSize = avatarSize
                self.excludeConnectUsers = excludeConnectUsers
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(query, forKey: "query")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(isShowAvatar, forKey: "showAvatar")
                encoder.encode(exclude, forKey: "exclude")
                encoder.encode(excludeAccountIDs, forKey: "excludeAccountIds")
                encoder.encode(avatarSize, forKey: "avatarSize")
                encoder.encode(excludeConnectUsers, forKey: "excludeConnectUsers")
                return encoder.items
            }
        }
    }
}
