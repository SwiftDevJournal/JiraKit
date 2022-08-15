// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Version {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/version/{id}`
        public let path: String

        /// Get version
        ///
        /// Returns a project version.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the version.
        public func get(expand: String? = nil) -> Request<JiraKit.Version> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "getVersion")
        }

        private func makeGetQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }

        /// Update version
        ///
        /// Updates a project version.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that contains the version.
        public func put(_ body: JiraKit.Version) -> Request<JiraKit.Version> {
            Request(method: "PUT", url: path, body: body, id: "updateVersion")
        }

        /// Delete version
        ///
        /// Deletes a project version.
        /// 
        /// Deprecated, use [ Delete and replace version](#api-rest-api-3-version-id-removeAndSwap-post) that supports swapping version values in custom fields, in addition to the swapping for `fixVersion` and `affectedVersion` provided in this resource.
        /// 
        /// Alternative versions can be provided to update issues that use the deleted version in `fixVersion` or `affectedVersion`. If alternatives are not provided, occurrences of `fixVersion` and `affectedVersion` that contain the deleted version are cleared.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that contains the version.
        @available(*, deprecated, message: "Deprecated")
        public func delete(moveFixIssuesTo: String? = nil, moveAffectedIssuesTo: String? = nil) -> Request<Void> {
            Request(method: "DELETE", url: path, query: makeDeleteQuery(moveFixIssuesTo, moveAffectedIssuesTo), id: "deleteVersion")
        }

        private func makeDeleteQuery(_ moveFixIssuesTo: String?, _ moveAffectedIssuesTo: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(moveFixIssuesTo, forKey: "moveFixIssuesTo")
            encoder.encode(moveAffectedIssuesTo, forKey: "moveAffectedIssuesTo")
            return encoder.items
        }
    }
}