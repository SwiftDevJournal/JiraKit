// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Version.WithID.Mergeto {
    public func moveIssuesTo(_ moveIssuesTo: String) -> WithMoveIssuesTo {
        WithMoveIssuesTo(path: "\(path)/\(moveIssuesTo)")
    }

    public struct WithMoveIssuesTo {
        /// Path: `/rest/api/3/version/{id}/mergeto/{moveIssuesTo}`
        public let path: String

        /// Merge versions
        ///
        /// Merges two project versions. The merge is completed by deleting the version specified in `id` and replacing any occurrences of its ID in `fixVersion` with the version ID specified in `moveIssuesTo`.
        /// 
        /// Consider using [ Delete and replace version](#api-rest-api-3-version-id-removeAndSwap-post) instead. This resource supports swapping version values in `fixVersion`, `affectedVersion`, and custom fields.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that contains the version.
        public var put: Request<AnyJSON> {
            Request(path: path, method: "PUT", id: "mergeVersions")
        }
    }
}
