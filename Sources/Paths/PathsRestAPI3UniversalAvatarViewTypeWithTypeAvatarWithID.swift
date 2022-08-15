// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.UniversalAvatar.View.`Type`.WithType.Avatar {
    public func id(_ id: Int) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/universal_avatar/view/type/{type}/avatar/{id}`
        public let path: String

        /// Get avatar image by ID
        ///
        /// Returns a project or issue type avatar image by ID.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  For system avatars, none.
        ///  *  For custom project avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project the avatar belongs to.
        ///  *  For custom issue type avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one project the issue type is used in.
        public func get(size: Size? = nil, format: Format? = nil) -> Request<[String: AnyJSON]> {
            Request(method: "GET", url: path, query: makeGetQuery(size, format), id: "getAvatarImageByID")
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
