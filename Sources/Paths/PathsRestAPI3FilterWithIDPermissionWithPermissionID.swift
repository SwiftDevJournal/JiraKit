// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Filter.WithID.Permission {
    public func permissionID(_ permissionID: Int) -> WithPermissionID {
        WithPermissionID(path: "\(path)/\(permissionID)")
    }

    public struct WithPermissionID {
        /// Path: `/rest/api/3/filter/{id}/permission/{permissionId}`
        public let path: String

        /// Get share permission
        ///
        /// Returns a share permission for a filter. A filter can be shared with groups, projects, all logged-in users, or the public. Sharing with all logged-in users or the public is known as a global share permission.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** None, however, a share permission is only returned for:
        /// 
        ///  *  filters owned by the user.
        ///  *  filters shared with a group that the user is a member of.
        ///  *  filters shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.
        ///  *  filters shared with a public project.
        ///  *  filters shared with the public.
        public var get: Request<JiraKit.SharePermission> {
            Request(method: "GET", url: path, id: "getSharePermission")
        }

        /// Delete share permission
        ///
        /// Deletes a share permission from a filter.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira and the user must own the filter.
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "deleteSharePermission")
        }
    }
}
