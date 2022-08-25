// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Fieldconfigurationscheme {
    public var project: Project {
        Project(path: path + "/project")
    }

    public struct Project {
        /// Path: `/rest/api/3/fieldconfigurationscheme/project`
        public let path: String

        /// Get field configuration schemes for projects
        ///
        /// Returns a [paginated](#pagination) list of field configuration schemes and, for each scheme, a list of the projects that use it.
        /// 
        /// The list is sorted by field configuration scheme ID. The first item contains the list of project IDs assigned to the default field configuration scheme.
        /// 
        /// Only field configuration schemes used in classic projects are returned.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters) -> Request<JiraKit.PageBeanFieldConfigurationSchemeProjects> {
            Request(method: "GET", url: path, query: parameters.asQuery, id: "getFieldConfigurationSchemeProjectMapping")
        }

        public struct GetParameters {
            public var startAt: Int64?
            public var maxResults: Int32?
            public var projectID: [Int64]

            public init(startAt: Int64? = nil, maxResults: Int32? = nil, projectID: [Int64]) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.projectID = projectID
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(projectID, forKey: "projectId")
                return encoder.items
            }
        }

        /// Assign field configuration scheme to project
        ///
        /// Assigns a field configuration scheme to a project. If the field configuration scheme ID is `null`, the operation assigns the default field configuration scheme.
        /// 
        /// Field configuration schemes can only be assigned to classic projects.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.FieldConfigurationSchemeProjectAssociation) -> Request<AnyJSON> {
            Request(method: "PUT", url: path, body: body, id: "assignFieldConfigurationSchemeToProject")
        }
    }
}
