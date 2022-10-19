// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.WithProjectIDOrKey {
    public var statuses: Statuses {
        Statuses(path: path + "/statuses")
    }

    public struct Statuses {
        /// Path: `/rest/api/3/project/{projectIdOrKey}/statuses`
        public let path: String

        /// Get all statuses for project
        ///
        /// Returns the valid statuses for a project. The statuses are grouped by issue type, as each project has a set of valid issue types and each issue type has a set of valid statuses.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.
        public var get: Request<[JiraKit.IssueTypeWithStatus]> {
            Request(path: path, method: "GET", id: "getAllStatuses")
        }
    }
}
