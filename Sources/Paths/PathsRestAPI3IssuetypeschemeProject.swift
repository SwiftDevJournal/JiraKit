// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issuetypescheme {
    public var project: Project {
        Project(path: path + "/project")
    }

    public struct Project {
        /// Path: `/rest/api/3/issuetypescheme/project`
        public let path: String

        /// Get issue type schemes for projects
        ///
        /// Returns a [paginated](#pagination) list of issue type schemes and, for each issue type scheme, a list of the projects that use it.
        /// 
        /// Only issue type schemes used in classic projects are returned.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters) -> Request<JiraKit.PageBeanIssueTypeSchemeProjects> {
            Request(path: path, method: "GET", query: parameters.asQuery, id: "getIssueTypeSchemeForProjects")
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

        /// Assign issue type scheme to project
        ///
        /// Assigns an issue type scheme to a project.
        /// 
        /// If any issues in the project are assigned issue types not present in the new scheme, the operation will fail. To complete the assignment those issues must be updated to use issue types in the new scheme.
        /// 
        /// Issue type schemes can only be assigned to classic projects.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.IssueTypeSchemeProjectAssociation) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", body: body, id: "assignIssueTypeSchemeToProject")
        }
    }
}
