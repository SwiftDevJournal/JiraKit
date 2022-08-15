// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issue.WithIssueIDOrKey {
    public var changelog: Changelog {
        Changelog(path: path + "/changelog")
    }

    public struct Changelog {
        /// Path: `/rest/api/3/issue/{issueIdOrKey}/changelog`
        public let path: String

        /// Get changelogs
        ///
        /// Returns a [paginated](#pagination) list of all changelogs for an issue sorted by date, starting from the oldest.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public func get(startAt: Int? = nil, maxResults: Int? = nil) -> Request<JiraKit.PageBeanChangelog> {
            Request(method: "GET", url: path, query: makeGetQuery(startAt, maxResults), id: "getChangeLogs")
        }

        private func makeGetQuery(_ startAt: Int?, _ maxResults: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(startAt, forKey: "startAt")
            encoder.encode(maxResults, forKey: "maxResults")
            return encoder.items
        }
    }
}