// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var issuetypescreenscheme: Issuetypescreenscheme {
        Issuetypescreenscheme(path: path + "/issuetypescreenscheme")
    }

    public struct Issuetypescreenscheme {
        /// Path: `/rest/api/3/issuetypescreenscheme`
        public let path: String

        /// Get issue type screen schemes
        ///
        /// Returns a [paginated](#pagination) list of issue type screen schemes.
        /// 
        /// Only issue type screen schemes used in classic projects are returned.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanIssueTypeScreenScheme> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "getIssueTypeScreenSchemes")
        }

        public struct GetParameters {
            public var startAt: Int64?
            public var maxResults: Int32?
            public var id: [Int64]?
            public var queryString: String?
            public var orderBy: OrderBy?
            public var expand: String?

            public enum OrderBy: String, Codable, CaseIterable {
                case name
                case minusname = "-name"
                case plusname = "+name"
                case id
                case minusid = "-id"
                case plusid = "+id"
            }

            public init(startAt: Int64? = nil, maxResults: Int32? = nil, id: [Int64]? = nil, queryString: String? = nil, orderBy: OrderBy? = nil, expand: String? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.id = id
                self.queryString = queryString
                self.orderBy = orderBy
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(id, forKey: "id")
                encoder.encode(queryString, forKey: "queryString")
                encoder.encode(orderBy, forKey: "orderBy")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }

        /// Create issue type screen scheme
        ///
        /// Creates an issue type screen scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func post(_ body: JiraKit.IssueTypeScreenSchemeDetails) -> Request<JiraKit.IssueTypeScreenSchemeID> {
            Request(method: "POST", url: path, body: body, id: "createIssueTypeScreenScheme")
        }
    }
}
