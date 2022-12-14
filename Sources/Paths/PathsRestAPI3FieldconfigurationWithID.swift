// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Fieldconfiguration {
    public func id(_ id: Int) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/fieldconfiguration/{id}`
        public let path: String

        /// Update field configuration
        ///
        /// Updates a field configuration. The name and the description provided in the request override the existing values.
        /// 
        /// This operation can only update configurations used in company-managed (classic) projects.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.FieldConfigurationDetails) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", body: body, id: "updateFieldConfiguration")
        }

        /// Delete field configuration
        ///
        /// Deletes a field configuration.
        /// 
        /// This operation can only delete configurations used in company-managed (classic) projects.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<AnyJSON> {
            Request(path: path, method: "DELETE", id: "deleteFieldConfiguration")
        }
    }
}
