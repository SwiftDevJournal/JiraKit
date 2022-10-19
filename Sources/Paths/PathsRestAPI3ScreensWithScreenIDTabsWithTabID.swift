// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Screens.WithScreenID.Tabs {
    public func tabID(_ tabID: Int) -> WithTabID {
        WithTabID(path: "\(path)/\(tabID)")
    }

    public struct WithTabID {
        /// Path: `/rest/api/3/screens/{screenId}/tabs/{tabId}`
        public let path: String

        /// Update screen tab
        ///
        /// Updates the name of a screen tab.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.ScreenableTab) -> Request<JiraKit.ScreenableTab> {
            Request(path: path, method: "PUT", body: body, id: "renameScreenTab")
        }

        /// Delete screen tab
        ///
        /// Deletes a screen tab.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "deleteScreenTab")
        }
    }
}
