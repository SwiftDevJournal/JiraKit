// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Status {
    public func idOrName(_ idOrName: String) -> WithIDOrName {
        WithIDOrName(path: "\(path)/\(idOrName)")
    }

    public struct WithIDOrName {
        /// Path: `/rest/api/3/status/{idOrName}`
        public let path: String

        /// Get status
        ///
        /// Returns a status. The status must be associated with an active workflow to be returned.
        /// 
        /// If a name is used on more than one status, only the status found first is returned. Therefore, identifying the status by its ID may be preferable.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// [Permissions](#permissions) required: None.
        public var get: Request<JiraKit.StatusDetails> {
            Request(path: path, method: "GET", id: "getStatus")
        }
    }
}
