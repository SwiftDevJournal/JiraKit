// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Groups {
    public var picker: Picker {
        Picker(path: path + "/picker")
    }

    public struct Picker {
        /// Path: `/rest/api/3/groups/picker`
        public let path: String

        /// Find groups
        ///
        /// Returns a list of groups whose names contain a query string. A list of group names can be provided to exclude groups from the results.
        /// 
        /// The primary use case for this resource is to populate a group picker suggestions list. To this end, the returned object includes the `html` field where the matched query term is highlighted in the group name with the HTML strong tag. Also, the groups list is wrapped in a response object that contains a header for use in the picker, specifically *Showing X of Y matching groups*.
        /// 
        /// The list returns with the groups sorted. If no groups match the list criteria, an empty list is returned.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg). Anonymous calls and calls by users without the required permission return an empty list.
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.FoundGroups> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "findGroups")
        }

        public struct GetParameters {
            public var accountID: String?
            /// Example: "query"
            public var query: String?
            public var exclude: [String]?
            public var excludeID: [String]?
            public var maxResults: Int32?
            public var userName: String?

            public init(accountID: String? = nil, query: String? = nil, exclude: [String]? = nil, excludeID: [String]? = nil, maxResults: Int32? = nil, userName: String? = nil) {
                self.accountID = accountID
                self.query = query
                self.exclude = exclude
                self.excludeID = excludeID
                self.maxResults = maxResults
                self.userName = userName
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(accountID, forKey: "accountId")
                encoder.encode(query, forKey: "query")
                encoder.encode(exclude, forKey: "exclude")
                encoder.encode(excludeID, forKey: "excludeId")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(userName, forKey: "userName")
                return encoder.items
            }
        }
    }
}
