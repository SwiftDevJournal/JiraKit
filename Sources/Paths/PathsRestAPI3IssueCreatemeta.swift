// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issue {
    public var createmeta: Createmeta {
        Createmeta(path: path + "/createmeta")
    }

    public struct Createmeta {
        /// Path: `/rest/api/3/issue/createmeta`
        public let path: String

        /// Get create issue metadata
        ///
        /// Returns details of projects, issue types within projects, and, when requested, the create screen fields for each issue type for the user. Use the information to populate the requests in [ Create issue](#api-rest-api-3-issue-post) and [Create issues](#api-rest-api-3-issue-bulk-post).
        /// 
        /// The request can be restricted to specific projects or issue types using the query parameters. The response will contain information for the valid projects, issue types, or project and issue type combinations requested. Note that invalid project, issue type, or project and issue type combinations do not generate errors.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Create issues* [project permission](https://confluence.atlassian.com/x/yodKLg) in the requested projects.
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.IssueCreateMetadata> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getCreateIssueMeta")
        }

        public struct GetParameters {
            public var projectIDs: [String]?
            public var projectKeys: [String]?
            public var issuetypeIDs: [String]?
            public var issuetypeNames: [String]?
            public var expand: String?

            public init(projectIDs: [String]? = nil, projectKeys: [String]? = nil, issuetypeIDs: [String]? = nil, issuetypeNames: [String]? = nil, expand: String? = nil) {
                self.projectIDs = projectIDs
                self.projectKeys = projectKeys
                self.issuetypeIDs = issuetypeIDs
                self.issuetypeNames = issuetypeNames
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(projectIDs, forKey: "projectIds")
                encoder.encode(projectKeys, forKey: "projectKeys")
                encoder.encode(issuetypeIDs, forKey: "issuetypeIds")
                encoder.encode(issuetypeNames, forKey: "issuetypeNames")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
