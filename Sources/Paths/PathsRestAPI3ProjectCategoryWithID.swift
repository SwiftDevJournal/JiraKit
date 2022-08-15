// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.ProjectCategory {
    public func id(_ id: Int) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/projectCategory/{id}`
        public let path: String

        /// Get project category by ID
        ///
        /// Returns a project category.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public var get: Request<JiraKit.ProjectCategory> {
            Request(method: "GET", url: path, id: "getProjectCategoryById")
        }

        /// Update project category
        ///
        /// Updates a project category.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.ProjectCategory) -> Request<JiraKit.UpdatedProjectCategory> {
            Request(method: "PUT", url: path, body: body, id: "updateProjectCategory")
        }

        /// Delete project category
        ///
        /// Deletes a project category.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "removeProjectCategory")
        }
    }
}
