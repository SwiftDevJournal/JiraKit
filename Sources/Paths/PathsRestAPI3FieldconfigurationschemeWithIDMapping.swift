// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Fieldconfigurationscheme.WithID {
    public var mapping: Mapping {
        Mapping(path: path + "/mapping")
    }

    public struct Mapping {
        /// Path: `/rest/api/3/fieldconfigurationscheme/{id}/mapping`
        public let path: String

        /// Assign issue types to field configurations
        ///
        /// Assigns issue types to field configurations on field configuration scheme.
        /// 
        /// This operation can only modify field configuration schemes used in company-managed (classic) projects.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.AssociateFieldConfigurationsWithIssueTypesRequest) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", body: body, id: "setFieldConfigurationSchemeMapping")
        }
    }
}
