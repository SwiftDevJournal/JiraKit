// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Jql {
    public var match: Match {
        Match(path: path + "/match")
    }

    public struct Match {
        /// Path: `/rest/api/3/jql/match`
        public let path: String

        /// Check issues against JQL
        ///
        /// Checks whether one or more issues would be returned by one or more JQL queries.
        /// 
        /// **[Permissions](#permissions) required:** None, however, issues are only matched against JQL queries where the user has:
        /// 
        ///  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public func post(_ body: JiraKit.IssuesAndJQLQueries) -> Request<JiraKit.IssueMatches> {
            Request(method: "POST", url: path, body: body, id: "matchIssues")
        }
    }
}
