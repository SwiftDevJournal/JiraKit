// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Permissionscheme.WithSchemeID {
    public var permission: Permission {
        Permission(path: path + "/permission")
    }

    public struct Permission {
        /// Path: `/rest/api/3/permissionscheme/{schemeId}/permission`
        public let path: String

        /// Get permission scheme grants
        ///
        /// Returns all permission grants for a permission scheme.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public func get(expand: String? = nil) -> Request<JiraKit.PermissionGrants> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "getPermissionSchemeGrants")
        }

        private func makeGetQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }

        /// Create permission grant
        ///
        /// Creates a permission grant in a permission scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func post(expand: String? = nil, _ body: JiraKit.PermissionGrant) -> Request<JiraKit.PermissionGrant> {
            Request(method: "POST", url: path, query: makePostQuery(expand), body: body, id: "createPermissionGrant")
        }

        private func makePostQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }
    }
}