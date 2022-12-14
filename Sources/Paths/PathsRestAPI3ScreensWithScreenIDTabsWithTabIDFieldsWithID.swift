// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Screens.WithScreenID.Tabs.WithTabID.Fields {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/screens/{screenId}/tabs/{tabId}/fields/{id}`
        public let path: String

        /// Remove screen tab field
        ///
        /// Removes a field from a screen tab.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "removeScreenTabField")
        }
    }
}
