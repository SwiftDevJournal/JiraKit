// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issue.WithIssueIDOrKey {
    public var votes: Votes {
        Votes(path: path + "/votes")
    }

    public struct Votes {
        /// Path: `/rest/api/3/issue/{issueIdOrKey}/votes`
        public let path: String

        /// Get votes
        ///
        /// Returns details about the votes on an issue.
        /// 
        /// This operation requires the **Allow users to vote on issues** option to be *ON*. This option is set in General configuration for Jira. See [Configuring Jira application options](https://confluence.atlassian.com/x/uYXKM) for details.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is ini
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        /// 
        /// Note that users with the necessary permissions for this operation but without the *View voters and watchers* project permissions are not returned details in the `voters` field.
        public var get: Request<JiraKit.Votes> {
            Request(method: "GET", url: path, id: "getVotes")
        }

        /// Add vote
        ///
        /// Adds the user's vote to an issue. This is the equivalent of the user clicking *Vote* on an issue in Jira.
        /// 
        /// This operation requires the **Allow users to vote on issues** option to be *ON*. This option is set in General configuration for Jira. See [Configuring Jira application options](https://confluence.atlassian.com/x/uYXKM) for details.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public var post: Request<AnyJSON> {
            Request(method: "POST", url: path, id: "addVote")
        }

        /// Delete vote
        ///
        /// Deletes a user's vote from an issue. This is the equivalent of the user clicking *Unvote* on an issue in Jira.
        /// 
        /// This operation requires the **Allow users to vote on issues** option to be *ON*. This option is set in General configuration for Jira. See [Configuring Jira application options](https://confluence.atlassian.com/x/uYXKM) for details.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "removeVote")
        }
    }
}
