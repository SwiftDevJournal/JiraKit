// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issuetypescheme {
    public func issueTypeSchemeID(_ issueTypeSchemeID: Int) -> WithIssueTypeSchemeID {
        WithIssueTypeSchemeID(path: "\(path)/\(issueTypeSchemeID)")
    }

    public struct WithIssueTypeSchemeID {
        /// Path: `/rest/api/3/issuetypescheme/{issueTypeSchemeId}`
        public let path: String

        /// Update issue type scheme
        ///
        /// Updates an issue type scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.IssueTypeSchemeUpdateDetails) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", body: body, id: "updateIssueTypeScheme")
        }

        /// Delete issue type scheme
        ///
        /// Deletes an issue type scheme.
        /// 
        /// Only issue type schemes used in classic projects can be deleted.
        /// 
        /// Any projects assigned to the scheme are reassigned to the default issue type scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<AnyJSON> {
            Request(path: path, method: "DELETE", id: "deleteIssueTypeScheme")
        }
    }
}
