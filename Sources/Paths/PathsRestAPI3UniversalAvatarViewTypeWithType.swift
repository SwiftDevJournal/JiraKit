// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.UniversalAvatar.View.`Type` {
    public func type(_ type: String) -> WithType {
        WithType(path: "\(path)/\(type)")
    }

    public struct WithType {
        /// Path: `/rest/api/3/universal_avatar/view/type/{type}`
        public let path: String

        /// Get avatar image by type
        ///
        /// Returns the default project or issue type avatar image.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public func get(size: Size? = nil, format: Format? = nil) -> Request<[String: AnyJSON]> {
            Request(method: "GET", url: path, query: makeGetQuery(size, format), id: "getAvatarImageByType")
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
