// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Dashboard {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/dashboard/{id}`
        public let path: String

        /// Get dashboard
        ///
        /// Returns a dashboard.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** None.
        /// 
        /// However, to get a dashboard, the dashboard must be shared with the user or the user must own it. Note, users with the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) are considered owners of the System dashboard. The System dashboard is considered to be shared with all other users.
        public var get: Request<JiraKit.Dashboard> {
            Request(method: "GET", url: path, id: "getDashboard")
        }

        /// Update dashboard
        ///
        /// Updates a dashboard, replacing all the dashboard details with those provided.
        /// 
        /// **[Permissions](#permissions) required:** None
        /// 
        /// The dashboard to be updated must be owned by the user.
        public func put(_ body: JiraKit.DashboardDetails) -> Request<JiraKit.Dashboard> {
            Request(method: "PUT", url: path, body: body, id: "updateDashboard")
        }

        /// Delete dashboard
        ///
        /// Deletes a dashboard.
        /// 
        /// **[Permissions](#permissions) required:** None
        /// 
        /// The dashboard to be deleted must be owned by the user.
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "deleteDashboard")
        }
    }
}