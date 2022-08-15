// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Permissionscheme {
    public func schemeID(_ schemeID: Int) -> WithSchemeID {
        WithSchemeID(path: "\(path)/\(schemeID)")
    }

    public struct WithSchemeID {
        /// Path: `/rest/api/3/permissionscheme/{schemeId}`
        public let path: String

        /// Get permission scheme
        ///
        /// Returns a permission scheme.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public func get(expand: String? = nil) -> Request<JiraKit.PermissionScheme> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "getPermissionScheme")
        }

        private func makeGetQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }

        /// Update permission scheme
        ///
        /// Updates a permission scheme. Below are some important things to note when using this resource:
        /// 
        ///  *  If a permissions list is present in the request, then it is set in the permission scheme, overwriting *all existing* grants.
        ///  *  If you want to update only the name and description, then do not send a permissions list in the request.
        ///  *  Sending an empty list will remove all permission grants from the permission scheme.
        /// 
        /// If you want to add or delete a permission grant instead of updating the whole list, see [Create permission grant](#api-rest-api-3-permissionscheme-schemeId-permission-post) or [Delete permission scheme entity](#api-rest-api-3-permissionscheme-schemeId-permission-permissionId-delete).
        /// 
        /// See [About permission schemes and grants](../api-group-permission-schemes/#about-permission-schemes-and-grants) for more details.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(expand: String? = nil, _ body: JiraKit.PermissionScheme) -> Request<JiraKit.PermissionScheme> {
            Request(method: "PUT", url: path, query: makePutQuery(expand), body: body, id: "updatePermissionScheme")
        }

        private func makePutQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }

        /// Delete permission scheme
        ///
        /// Deletes a permission scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "deletePermissionScheme")
        }
    }
}
