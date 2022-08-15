// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Field.WithFieldID.Context.WithContextID.Issuetype {
    public var remove: Remove {
        Remove(path: path + "/remove")
    }

    public struct Remove {
        /// Path: `/rest/api/3/field/{fieldId}/context/{contextId}/issuetype/remove`
        public let path: String

        /// Remove issue types from context
        ///
        /// Removes issue types from a custom field context.
        /// 
        /// A custom field context without any issue types applies to all issue types.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func post(_ body: JiraKit.IssueTypeIDs) -> Request<AnyJSON> {
            Request(method: "POST", url: path, body: body, id: "removeIssueTypesFromContext")
        }
    }
}
