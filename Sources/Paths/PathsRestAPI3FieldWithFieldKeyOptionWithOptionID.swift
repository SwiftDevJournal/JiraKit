// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Field.WithFieldKey.Option {
    public func optionID(_ optionID: Int) -> WithOptionID {
        WithOptionID(path: "\(path)/\(optionID)")
    }

    public struct WithOptionID {
        /// Path: `/rest/api/3/field/{fieldKey}/option/{optionId}`
        public let path: String

        /// Get issue field option
        ///
        /// Returns an option from a select list issue field.
        /// 
        /// Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the app providing the field.
        public var get: Request<JiraKit.IssueFieldOption> {
            Request(path: path, method: "GET", id: "getIssueFieldOption")
        }

        /// Update issue field option
        ///
        /// Updates or creates an option for a select list issue field. This operation requires that the option ID is provided when creating an option, therefore, the option ID needs to be specified as a path and body parameter. The option ID provided in the path and body must be identical.
        /// 
        /// Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the app providing the field.
        public func put(_ body: JiraKit.IssueFieldOption) -> Request<JiraKit.IssueFieldOption> {
            Request(path: path, method: "PUT", body: body, id: "updateIssueFieldOption")
        }

        /// Delete issue field option
        ///
        /// Deletes an option from a select list issue field.
        /// 
        /// Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the app providing the field.
        public var delete: Request<AnyJSON> {
            Request(path: path, method: "DELETE", id: "deleteIssueFieldOption")
        }
    }
}
