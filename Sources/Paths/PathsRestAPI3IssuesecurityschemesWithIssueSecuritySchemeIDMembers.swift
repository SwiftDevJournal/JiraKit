// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issuesecurityschemes.WithIssueSecuritySchemeID {
    public var members: Members {
        Members(path: path + "/members")
    }

    public struct Members {
        /// Path: `/rest/api/3/issuesecurityschemes/{issueSecuritySchemeId}/members`
        public let path: String

        /// Get issue security level members
        ///
        /// Returns issue security level members.
        /// 
        /// Only issue security level members in context of classic projects are returned.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanIssueSecurityLevelMember> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "getIssueSecurityLevelMembers")
        }

        public struct GetParameters {
            public var startAt: Int?
            public var maxResults: Int?
            public var issueSecurityLevelID: [Int]?
            public var expand: String?

            public init(startAt: Int? = nil, maxResults: Int? = nil, issueSecurityLevelID: [Int]? = nil, expand: String? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.issueSecurityLevelID = issueSecurityLevelID
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(issueSecurityLevelID, forKey: "issueSecurityLevelId")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}