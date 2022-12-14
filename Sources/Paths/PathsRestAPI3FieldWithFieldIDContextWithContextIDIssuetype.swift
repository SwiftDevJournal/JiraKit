// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Field.WithFieldID.Context.WithContextID {
    public var issuetype: Issuetype {
        Issuetype(path: path + "/issuetype")
    }

    public struct Issuetype {
        /// Path: `/rest/api/3/field/{fieldId}/context/{contextId}/issuetype`
        public let path: String

        /// Add issue types to context
        ///
        /// Adds issue types to a custom field context, appending the issue types to the issue types list.
        /// 
        /// A custom field context without any issue types applies to all issue types. Adding issue types to such a custom field context would result in it applying to only the listed issue types.
        /// 
        /// If any of the issue types exists in the custom field context, the operation fails and no issue types are added.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.IssueTypeIDs) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", body: body, id: "addIssueTypesToContext")
        }
    }
}
