// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Instance {
    public var license: License {
        License(path: path + "/license")
    }

    public struct License {
        /// Path: `/rest/api/3/instance/license`
        public let path: String

        /// Get license
        ///
        /// Returns licensing information about the Jira instance.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public var get: Request<JiraKit.License> {
            Request(path: path, method: "GET", id: "getLicense")
        }
    }
}
