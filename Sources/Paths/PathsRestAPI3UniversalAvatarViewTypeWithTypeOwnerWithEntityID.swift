// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.UniversalAvatar.View.`Type`.WithType.Owner {
    public func entityID(_ entityID: String) -> WithEntityID {
        WithEntityID(path: "\(path)/\(entityID)")
    }

    public struct WithEntityID {
        /// Path: `/rest/api/3/universal_avatar/view/type/{type}/owner/{entityId}`
        public let path: String

        /// Get avatar image by owner
        ///
        /// Returns the avatar image for a project or issue type.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  For system avatars, none.
        ///  *  For custom project avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project the avatar belongs to.
        ///  *  For custom issue type avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one project the issue type is used in.
        public func get(size: Size? = nil, format: Format? = nil) -> Request<[String: AnyJSON]> {
            Request(path: path, method: "GET", query: makeGetQuery(size, format), id: "getAvatarImageByOwner")
        }

        private func makeGetQuery(_ size: Size?, _ format: Format?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(size, forKey: "size")
            encoder.encode(format, forKey: "format")
            return encoder.items
        }

        public enum Size: String, Codable, CaseIterable {
            case xsmall
            case small
            case medium
            case large
            case xlarge
        }

        public enum Format: String, Codable, CaseIterable {
            case png
            case svg
        }
    }
}
