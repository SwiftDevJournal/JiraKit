// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project {
    public func projectIDOrKey(_ projectIDOrKey: String) -> WithProjectIDOrKey {
        WithProjectIDOrKey(path: "\(path)/\(projectIDOrKey)")
    }

    public struct WithProjectIDOrKey {
        /// Path: `/rest/api/3/project/{projectIdOrKey}`
        public let path: String

        /// Get project
        ///
        /// Returns the [project details](https://confluence.atlassian.com/x/ahLpNw) for a project.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.
        public func get(expand: String? = nil, properties: [String]? = nil) -> Request<JiraKit.Project> {
            Request(method: "GET", url: path, query: makeGetQuery(expand, properties), id: "getProject")
        }

        private func makeGetQuery(_ expand: String?, _ properties: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            encoder.encode(properties, forKey: "properties")
            return encoder.items
        }

        /// Update project
        ///
        /// Updates the [project details](https://confluence.atlassian.com/x/ahLpNw) of a project.
        /// 
        /// All parameters are optional in the body of the request.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(expand: String? = nil, _ body: JiraKit.UpdateProjectDetails) -> Request<JiraKit.Project> {
            Request(method: "PUT", url: path, query: makePutQuery(expand), body: body, id: "updateProject")
        }

        private func makePutQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }

        /// Delete project
        ///
        /// Deletes a project.
        /// 
        /// You can't delete a project if it's archived. To delete an archived project, restore the project and then delete it. To restore a project, use the Jira UI.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func delete(enableUndo: Bool? = nil) -> Request<Void> {
            Request(method: "DELETE", url: path, query: makeDeleteQuery(enableUndo), id: "deleteProject")
        }

        private func makeDeleteQuery(_ enableUndo: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(enableUndo, forKey: "enableUndo")
            return encoder.items
        }
    }
}
