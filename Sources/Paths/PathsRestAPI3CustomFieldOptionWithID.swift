// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.CustomFieldOption {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/customFieldOption/{id}`
        public let path: String

        /// Get custom field option
        ///
        /// Returns a custom field option. For example, an option in a select list.
        /// 
        /// Note that this operation **only works for issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource**, it cannot be used with issue field select list options created by Connect apps.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** The custom field option is returned as follows:
        /// 
        ///  *  if the user has the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        ///  *  if the user has the *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one project the custom field is used in, and the field is visible in at least one layout the user has permission to view.
        public var get: Request<JiraKit.CustomFieldOption> {
            Request(path: path, method: "GET", id: "getCustomFieldOption")
        }
    }
}
