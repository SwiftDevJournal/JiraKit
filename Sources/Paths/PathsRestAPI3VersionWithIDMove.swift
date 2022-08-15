// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Version.WithID {
    public var move: Move {
        Move(path: path + "/move")
    }

    public struct Move {
        /// Path: `/rest/api/3/version/{id}/move`
        public let path: String

        /// Move version
        ///
        /// Modifies the version's sequence within the project, which affects the display order of the versions in Jira.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse projects* project permission for the project that contains the version.
        public func post(_ body: JiraKit.VersionMoveBean) -> Request<JiraKit.Version> {
            Request(method: "POST", url: path, body: body, id: "moveVersion")
        }
    }
}
