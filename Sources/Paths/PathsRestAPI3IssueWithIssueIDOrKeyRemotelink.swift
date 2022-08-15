// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issue.WithIssueIDOrKey {
    public var remotelink: Remotelink {
        Remotelink(path: path + "/remotelink")
    }

    public struct Remotelink {
        /// Path: `/rest/api/3/issue/{issueIdOrKey}/remotelink`
        public let path: String

        /// Get remote issue links
        ///
        /// Returns the remote issue links for an issue. When a remote issue link global ID is provided the record with that global ID is returned, otherwise all remote issue links are returned. Where a global ID includes reserved URL characters these must be escaped in the request. For example, pass `system=http://www.mycompany.com/support&id=1` as `system%3Dhttp%3A%2F%2Fwww.mycompany.com%2Fsupport%26id%3D1`.
        /// 
        /// This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public func get(globalID: String? = nil) -> Request<JiraKit.RemoteIssueLink> {
            Request(method: "GET", url: path, query: makeGetQuery(globalID), id: "getRemoteIssueLinks")
        }

        private func makeGetQuery(_ globalID: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(globalID, forKey: "globalId")
            return encoder.items
        }

        /// Create or update remote issue link
        ///
        /// Creates or updates a remote issue link for an issue.
        /// 
        /// If a `globalId` is provided and a remote issue link with that global ID is found it is updated. Any fields without values in the request are set to null. Otherwise, the remote issue link is created.
        /// 
        /// This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse projects* and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public func post(_ body: JiraKit.RemoteIssueLinkRequest) -> Request<JiraKit.RemoteIssueLinkIdentifies> {
            Request(method: "POST", url: path, body: body, id: "createOrUpdateRemoteIssueLink")
        }

        /// Delete remote issue link by global ID
        ///
        /// Deletes the remote issue link from the issue using the link's global ID. Where the global ID includes reserved URL characters these must be escaped in the request. For example, pass `system=http://www.mycompany.com/support&id=1` as `system%3Dhttp%3A%2F%2Fwww.mycompany.com%2Fsupport%26id%3D1`.
        /// 
        /// This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse projects* and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is implemented, issue-level security permission to view the issue.
        public func delete(globalID: String) -> Request<Void> {
            Request(method: "DELETE", url: path, query: [("globalId", globalID)], id: "deleteRemoteIssueLinkByGlobalId")
        }
    }
}