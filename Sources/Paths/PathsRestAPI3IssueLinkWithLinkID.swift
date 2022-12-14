// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.IssueLink {
    public func linkID(_ linkID: String) -> WithLinkID {
        WithLinkID(path: "\(path)/\(linkID)")
    }

    public struct WithLinkID {
        /// Path: `/rest/api/3/issueLink/{linkId}`
        public let path: String

        /// Get issue link
        ///
        /// Returns an issue link.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse project* [project permission](https://confluence.atlassian.com/x/yodKLg) for all the projects containing the linked issues.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, permission to view both of the issues.
        public var get: Request<JiraKit.IssueLink> {
            Request(path: path, method: "GET", id: "getIssueLink")
        }

        /// Delete issue link
        ///
        /// Deletes an issue link.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  Browse project [project permission](https://confluence.atlassian.com/x/yodKLg) for all the projects containing the issues in the link.
        ///  *  *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one of the projects containing issues in the link.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, permission to view both of the issues.
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deleteIssueLink")
        }
    }
}
