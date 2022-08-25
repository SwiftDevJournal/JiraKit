// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.User.Viewissue {
    public var search: Search {
        Search(path: path + "/search")
    }

    public struct Search {
        /// Path: `/rest/api/3/user/viewissue/search`
        public let path: String

        /// Find users with browse permission
        ///
        /// Returns a list of users who fulfill these criteria:
        /// 
        ///  *  their user attributes match a search string.
        ///  *  they have permission to browse issues.
        /// 
        /// Use this resource to find users who can browse:
        /// 
        ///  *  an issue, by providing the `issueKey`.
        ///  *  any issue in a project, by providing the `projectKey`.
        /// 
        /// This operation takes the users in the range defined by `startAt` and `maxResults`, up to the thousandth user, and then returns only the users from that range that match the search string and have permission to browse issues. This means the operation usually returns fewer users than specified in `maxResults`. To get all the users who match the search string and have permission to browse issues, use [Get all users](#api-rest-api-3-users-search-get) and filter the records in your code.
        /// 
        /// Privacy controls are applied to the response based on the users' preferences. This could mean, for example, that the user's email address is hidden. See the [Profile visibility overview](https://developer.atlassian.com/cloud/jira/platform/profile-visibility/) for more details.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg). Anonymous calls and calls by users without the required permission return empty search results.
        public func get(parameters: GetParameters? = nil) -> Request<[JiraKit.User]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "findUsersWithBrowsePermission")
        }

        public struct GetParameters {
            /// Example: "query"
            public var query: String?
            public var username: String?
            public var accountID: String?
            public var issueKey: String?
            public var projectKey: String?
            public var startAt: Int32?
            public var maxResults: Int32?

            public init(query: String? = nil, username: String? = nil, accountID: String? = nil, issueKey: String? = nil, projectKey: String? = nil, startAt: Int32? = nil, maxResults: Int32? = nil) {
                self.query = query
                self.username = username
                self.accountID = accountID
                self.issueKey = issueKey
                self.projectKey = projectKey
                self.startAt = startAt
                self.maxResults = maxResults
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(query, forKey: "query")
                encoder.encode(username, forKey: "username")
                encoder.encode(accountID, forKey: "accountId")
                encoder.encode(issueKey, forKey: "issueKey")
                encoder.encode(projectKey, forKey: "projectKey")
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                return encoder.items
            }
        }
    }
}
