// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Version.WithID {
    public var removeAndSwap: RemoveAndSwap {
        RemoveAndSwap(path: path + "/removeAndSwap")
    }

    public struct RemoveAndSwap {
        /// Path: `/rest/api/3/version/{id}/removeAndSwap`
        public let path: String

        /// Delete and replace version
        ///
        /// Deletes a project version.
        /// 
        /// Alternative versions can be provided to update issues that use the deleted version in `fixVersion`, `affectedVersion`, or any version picker custom fields. If alternatives are not provided, occurrences of `fixVersion`, `affectedVersion`, and any version picker custom field, that contain the deleted version, are cleared. Any replacement version must be in the same project as the version being deleted and cannot be the version being deleted.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that contains the version.
        public func post(_ body: JiraKit.DeleteAndReplaceVersionBean) -> Request<AnyJSON> {
            Request(method: "POST", url: path, body: body, id: "deleteAndReplaceVersion")
        }
    }
}