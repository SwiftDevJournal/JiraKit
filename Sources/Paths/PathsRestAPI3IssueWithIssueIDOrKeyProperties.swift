// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issue.WithIssueIDOrKey {
    public var properties: Properties {
        Properties(path: path + "/properties")
    }

    public struct Properties {
        /// Path: `/rest/api/3/issue/{issueIdOrKey}/properties`
        public let path: String

        /// Get issue property keys
        ///
        /// Returns the URLs and keys of an issue's properties.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** Property details are only returned where the user has:
        /// 
        ///  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public var get: Request<JiraKit.PropertyKeys> {
            Request(path: path, method: "GET", id: "getIssuePropertyKeys")
        }
    }
}
