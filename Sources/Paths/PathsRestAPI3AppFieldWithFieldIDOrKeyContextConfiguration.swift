// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.App.Field.WithFieldIDOrKey.Context {
    public var configuration: Configuration {
        Configuration(path: path + "/configuration")
    }

    public struct Configuration {
        /// Path: `/rest/api/3/app/field/{fieldIdOrKey}/context/configuration`
        public let path: String

        /// Get custom field configurations
        ///
        /// Returns a [paginated](#pagination) list of configurations for a custom field created by a [Forge app](https://developer.atlassian.com/platform/forge/).
        /// 
        /// The result can be filtered by one of these criteria:
        /// 
        ///  *  `id`.
        ///  *  `fieldContextId`.
        ///  *  `issueId`.
        ///  *  `projectKeyOrId` and `issueTypeId`.
        /// 
        /// Otherwise, all configurations are returned.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the Forge app that created the custom field.
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanContextualConfiguration> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "getCustomFieldConfiguration")
        }

        public struct GetParameters {
            public var id: [Int64]?
            public var fieldContextID: [Int64]?
            public var issueID: Int64?
            public var projectKeyOrID: String?
            public var issueTypeID: String?
            public var startAt: Int64?
            public var maxResults: Int32?

            public init(id: [Int64]? = nil, fieldContextID: [Int64]? = nil, issueID: Int64? = nil, projectKeyOrID: String? = nil, issueTypeID: String? = nil, startAt: Int64? = nil, maxResults: Int32? = nil) {
                self.id = id
                self.fieldContextID = fieldContextID
                self.issueID = issueID
                self.projectKeyOrID = projectKeyOrID
                self.issueTypeID = issueTypeID
                self.startAt = startAt
                self.maxResults = maxResults
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(id, forKey: "id")
                encoder.encode(fieldContextID, forKey: "fieldContextId")
                encoder.encode(issueID, forKey: "issueId")
                encoder.encode(projectKeyOrID, forKey: "projectKeyOrId")
                encoder.encode(issueTypeID, forKey: "issueTypeId")
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                return encoder.items
            }
        }

        /// Update custom field configurations
        ///
        /// Update the configuration for contexts of a custom field created by a [Forge app](https://developer.atlassian.com/platform/forge/).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the Forge app that created the custom field.
        public func put(_ body: JiraKit.CustomFieldConfigurations) -> Request<AnyJSON> {
            Request(method: "PUT", url: path, body: body, id: "updateCustomFieldConfiguration")
        }
    }
}
