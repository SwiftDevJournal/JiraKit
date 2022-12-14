// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issuetypescreenscheme {
    public func issueTypeScreenSchemeID(_ issueTypeScreenSchemeID: String) -> WithIssueTypeScreenSchemeID {
        WithIssueTypeScreenSchemeID(path: "\(path)/\(issueTypeScreenSchemeID)")
    }

    public struct WithIssueTypeScreenSchemeID {
        /// Path: `/rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}`
        public let path: String

        /// Update issue type screen scheme
        ///
        /// Updates an issue type screen scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.IssueTypeScreenSchemeUpdateDetails) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", body: body, id: "updateIssueTypeScreenScheme")
        }

        /// Delete issue type screen scheme
        ///
        /// Deletes an issue type screen scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<AnyJSON> {
            Request(path: path, method: "DELETE", id: "deleteIssueTypeScreenScheme")
        }
    }
}
