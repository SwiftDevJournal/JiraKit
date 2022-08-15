// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Fieldconfigurationscheme {
    public var mapping: Mapping {
        Mapping(path: path + "/mapping")
    }

    public struct Mapping {
        /// Path: `/rest/api/3/fieldconfigurationscheme/mapping`
        public let path: String

        /// Get field configuration issue type items
        ///
        /// Returns a [paginated](#pagination) list of field configuration issue type items.
        /// 
        /// Only items used in classic projects are returned.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanFieldConfigurationIssueTypeItem> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "getFieldConfigurationSchemeMappings")
        }

        public struct GetParameters {
            public var startAt: Int?
            public var maxResults: Int?
            public var fieldConfigurationSchemeID: [Int]?

            public init(startAt: Int? = nil, maxResults: Int? = nil, fieldConfigurationSchemeID: [Int]? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.fieldConfigurationSchemeID = fieldConfigurationSchemeID
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(fieldConfigurationSchemeID, forKey: "fieldConfigurationSchemeId")
                return encoder.items
            }
        }
    }
}
