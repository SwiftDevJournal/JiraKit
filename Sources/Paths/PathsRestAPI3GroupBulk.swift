// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Group {
    public var bulk: Bulk {
        Bulk(path: path + "/bulk")
    }

    public struct Bulk {
        /// Path: `/rest/api/3/group/bulk`
        public let path: String

        /// Bulk get groups
        ///
        /// Returns a [paginated](#pagination) list of groups.
        /// 
        /// **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanGroupDetails> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "bulkGetGroups")
        }

        public struct GetParameters {
            public var startAt: Int64?
            public var maxResults: Int32?
            /// Example: "3571b9a7-348f-414a-9087-8e1ea03a7df8"
            public var groupID: [String]?
            public var groupName: [String]?

            public init(startAt: Int64? = nil, maxResults: Int32? = nil, groupID: [String]? = nil, groupName: [String]? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.groupID = groupID
                self.groupName = groupName
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(groupID, forKey: "groupId")
                encoder.encode(groupName, forKey: "groupName")
                return encoder.items
            }
        }
    }
}
