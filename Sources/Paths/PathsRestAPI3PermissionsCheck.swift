// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Permissions {
    public var check: Check {
        Check(path: path + "/check")
    }

    public struct Check {
        /// Path: `/rest/api/3/permissions/check`
        public let path: String

        /// Get bulk permissions
        ///
        /// Returns:
        /// 
        ///  *  for a list of global permissions, the global permissions granted to a user.
        ///  *  for a list of project permissions and lists of projects and issues, for each project permission a list of the projects and issues a user can access or manipulate.
        /// 
        /// If no account ID is provided, the operation returns details for the logged in user.
        /// 
        /// Note that:
        /// 
        ///  *  Invalid project and issue IDs are ignored.
        ///  *  A maximum of 1000 projects and 1000 issues can be checked.
        ///  *  Null values in `globalPermissions`, `projectPermissions`, `projectPermissions.projects`, and `projectPermissions.issues` are ignored.
        ///  *  Empty strings in `projectPermissions.permissions` are ignored.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) to check the permissions for other users, otherwise none. However, Connect apps can make a call from the app server to the product to obtain permission details for any user, without admin permission. This Connect app ability doesn't apply to calls made using AP.request() in a browser.
        public func post(_ body: JiraKit.BulkPermissionsRequestBean) -> Request<JiraKit.BulkPermissionGrants> {
            Request(path: path, method: "POST", body: body, id: "getBulkPermissions")
        }
    }
}
