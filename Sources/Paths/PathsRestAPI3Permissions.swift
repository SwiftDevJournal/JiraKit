// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var permissions: Permissions {
        Permissions(path: path + "/permissions")
    }

    public struct Permissions {
        /// Path: `/rest/api/3/permissions`
        public let path: String

        /// Get all permissions
        ///
        /// Returns all permissions, including:
        /// 
        ///  *  global permissions.
        ///  *  project permissions.
        ///  *  global permissions added by plugins.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var get: Request<JiraKit.Permissions> {
            Request(path: path, method: "GET", id: "getAllPermissions")
        }
    }
}
