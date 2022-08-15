// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.WithProjectKeyOrID {
    public var permissionscheme: Permissionscheme {
        Permissionscheme(path: path + "/permissionscheme")
    }

    public struct Permissionscheme {
        /// Path: `/rest/api/3/project/{projectKeyOrId}/permissionscheme`
        public let path: String

        /// Get assigned permission scheme
        ///
        /// Gets the [permission scheme](https://confluence.atlassian.com/x/yodKLg) associated with the project.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg).
        public func get(expand: String? = nil) -> Request<JiraKit.PermissionScheme> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "getAssignedPermissionScheme")
        }

        private func makeGetQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }

        /// Assign permission scheme
        ///
        /// Assigns a permission scheme with a project. See [Managing project permissions](https://confluence.atlassian.com/x/yodKLg) for more information about permission schemes.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg)
        public func put(expand: String? = nil, _ body: JiraKit.IDBean) -> Request<JiraKit.PermissionScheme> {
            Request(method: "PUT", url: path, query: makePutQuery(expand), body: body, id: "assignPermissionScheme")
        }

        private func makePutQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }
    }
}
