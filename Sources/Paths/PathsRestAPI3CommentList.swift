// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Comment {
    public var list: List {
        List(path: path + "/list")
    }

    public struct List {
        /// Path: `/rest/api/3/comment/list`
        public let path: String

        /// Get comments by IDs
        ///
        /// Returns a [paginated](#pagination) list of comments specified by a list of comment IDs.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** Comments are returned where the user:
        /// 
        ///  *  has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the comment.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        ///  *  If the comment has visibility restrictions, belongs to the group or has the role visibility is restricted to.
        public func post(expand: String? = nil, _ body: JiraKit.IssueCommentListRequestBean) -> Request<JiraKit.PageBeanComment> {
            Request(path: path, method: "POST", query: makePostQuery(expand), body: body, id: "getCommentsByIds")
        }

        private func makePostQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }
    }
}
