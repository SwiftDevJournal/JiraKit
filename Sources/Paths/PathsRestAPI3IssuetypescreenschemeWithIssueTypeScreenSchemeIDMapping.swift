// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issuetypescreenscheme.WithIssueTypeScreenSchemeID {
    public var mapping: Mapping {
        Mapping(path: path + "/mapping")
    }

    public struct Mapping {
        /// Path: `/rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping`
        public let path: String

        /// Append mappings to issue type screen scheme
        ///
        /// Appends issue type to screen scheme mappings to an issue type screen scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.IssueTypeScreenSchemeMappingDetails) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", body: body, id: "appendMappingsForIssueTypeScreenScheme")
        }
    }
}
