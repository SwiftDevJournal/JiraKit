// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Version.WithID {
    public var relatedIssueCounts: RelatedIssueCounts {
        RelatedIssueCounts(path: path + "/relatedIssueCounts")
    }

    public struct RelatedIssueCounts {
        /// Path: `/rest/api/3/version/{id}/relatedIssueCounts`
        public let path: String

        /// Get version's related issues count
        ///
        /// Returns the following counts for a version:
        /// 
        ///  *  Number of issues where the `fixVersion` is set to the version.
        ///  *  Number of issues where the `affectedVersion` is set to the version.
        ///  *  Number of issues where a version custom field is set to the version.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse projects* project permission for the project that contains the version.
        public var get: Request<JiraKit.VersionIssueCounts> {
            Request(method: "GET", url: path, id: "getVersionRelatedIssues")
        }
    }
}
