// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var issueLink: IssueLink {
        IssueLink(path: path + "/issueLink")
    }

    public struct IssueLink {
        /// Path: `/rest/api/3/issueLink`
        public let path: String

        /// Create issue link
        ///
        /// Creates a link between two issues. Use this operation to indicate a relationship between two issues and optionally add a comment to the from (outward) issue. To use this resource the site must have [Issue Linking](https://confluence.atlassian.com/x/yoXKM) enabled.
        /// 
        /// This resource returns nothing on the creation of an issue link. To obtain the ID of the issue link, use `https://your-domain.atlassian.net/rest/api/3/issue/[linked issue key]?fields=issuelinks`.
        /// 
        /// If the link request duplicates a link, the response indicates that the issue link was created. If the request included a comment, the comment is added.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse project* [project permission](https://confluence.atlassian.com/x/yodKLg) for all the projects containing the issues to be linked,
        ///  *  *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) on the project containing the from (outward) issue,
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        ///  *  If the comment has visibility restrictions, belongs to the group or has the role visibility is restricted to.
        public func post(_ body: JiraKit.LinkIssueRequestJSONBean) -> Request<AnyJSON> {
            Request(path: path, method: "POST", body: body, id: "linkIssues")
        }
    }
}
