// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Attachment.Thumbnail {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/attachment/thumbnail/{id}`
        public let path: String

        /// Get attachment thumbnail
        ///
        /// Returns the thumbnail of an attachment.
        /// 
        /// To return the attachment contents, use [Download attachment content](#api-rest-api-3-attachment-content-id-get).
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** For the issue containing the attachment:
        /// 
        ///  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public func get(parameters: GetParameters? = nil) -> Request<[String: AnyJSON]> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "getAttachmentThumbnail")
        }

        public struct GetParameters {
            public var isRedirect: Bool?
            public var isFallbackToDefault: Bool?
            public var width: Int32?
            public var height: Int32?

            public init(isRedirect: Bool? = nil, isFallbackToDefault: Bool? = nil, width: Int32? = nil, height: Int32? = nil) {
                self.isRedirect = isRedirect
                self.isFallbackToDefault = isFallbackToDefault
                self.width = width
                self.height = height
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isRedirect, forKey: "redirect")
                encoder.encode(isFallbackToDefault, forKey: "fallbackToDefault")
                encoder.encode(width, forKey: "width")
                encoder.encode(height, forKey: "height")
                return encoder.items
            }
        }
    }
}
