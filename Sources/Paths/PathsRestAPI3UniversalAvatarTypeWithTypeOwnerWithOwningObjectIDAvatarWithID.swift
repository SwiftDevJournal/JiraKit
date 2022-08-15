// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.UniversalAvatar.`Type`.WithType.Owner.WithOwningObjectID.Avatar {
    public func id(_ id: Int) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/universal_avatar/type/{type}/owner/{owningObjectId}/avatar/{id}`
        public let path: String

        /// Delete avatar
        ///
        /// Deletes an avatar from a project or issue type.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "deleteAvatar")
        }
    }
}
