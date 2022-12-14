// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issuetypescreenscheme.WithIssueTypeScreenSchemeID.Mapping {
    public var remove: Remove {
        Remove(path: path + "/remove")
    }

    public struct Remove {
        /// Path: `/rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping/remove`
        public let path: String

        /// Remove mappings from issue type screen scheme
        ///
        /// Removes issue type to screen scheme mappings from an issue type screen scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func post(_ body: JiraKit.IssueTypeIDs) -> Request<AnyJSON> {
            Request(path: path, method: "POST", body: body, id: "removeMappingsFromIssueTypeScreenScheme")
        }
    }
}
