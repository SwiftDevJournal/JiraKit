// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issuetypescheme {
    public var mapping: Mapping {
        Mapping(path: path + "/mapping")
    }

    public struct Mapping {
        /// Path: `/rest/api/3/issuetypescheme/mapping`
        public let path: String

        /// Get issue type scheme items
        ///
        /// Returns a [paginated](#pagination) list of issue type scheme items.
        /// 
        /// Only issue type scheme items used in classic projects are returned.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanIssueTypeSchemeMapping> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getIssueTypeSchemesMapping")
        }

        public struct GetParameters {
            public var startAt: Int64?
            public var maxResults: Int32?
            public var issueTypeSchemeID: [Int64]?

            public init(startAt: Int64? = nil, maxResults: Int32? = nil, issueTypeSchemeID: [Int64]? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.issueTypeSchemeID = issueTypeSchemeID
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(issueTypeSchemeID, forKey: "issueTypeSchemeId")
                return encoder.items
            }
        }
    }
}
