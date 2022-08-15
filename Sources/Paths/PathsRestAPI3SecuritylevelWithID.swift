// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Securitylevel {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/securitylevel/{id}`
        public let path: String

        /// Get issue security level
        ///
        /// Returns details of an issue security level.
        /// 
        /// Use [Get issue security scheme](#api-rest-api-3-issuesecurityschemes-id-get) to obtain the IDs of issue security levels associated with the issue security scheme.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public var get: Request<JiraKit.SecurityLevel> {
            Request(method: "GET", url: path, id: "getIssueSecurityLevel")
        }
    }
}
