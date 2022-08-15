// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issuetypescheme.WithIssueTypeSchemeID.Issuetype {
    public func issueTypeID(_ issueTypeID: Int) -> WithIssueTypeID {
        WithIssueTypeID(path: "\(path)/\(issueTypeID)")
    }

    public struct WithIssueTypeID {
        /// Path: `/rest/api/3/issuetypescheme/{issueTypeSchemeId}/issuetype/{issueTypeId}`
        public let path: String

        /// Remove issue type from issue type scheme
        ///
        /// Removes an issue type from an issue type scheme.
        /// 
        /// This operation cannot remove:
        /// 
        ///  *  any issue type used by issues.
        ///  *  any issue types from the default issue type scheme.
        ///  *  the last standard issue type from an issue type scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<AnyJSON> {
            Request(method: "DELETE", url: path, id: "removeIssueTypeFromIssueTypeScheme")
        }
    }
}