// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Attachment.Content {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/attachment/content/{id}`
        public let path: String

        /// Get attachment content
        ///
        /// Returns the contents of an attachment. A `Range` header can be set to define a range of bytes within the attachment to download. See the [HTTP Range header standard](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Range) for details.
        /// 
        /// To return a thumbnail of the attachment, use [Download attachment thumbnail](#api-rest-api-3-attachment-thumbnail-id-get).
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** For the issue containing the attachment:
        /// 
        ///  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public func get(isRedirect: Bool? = nil) -> Request<[String: AnyJSON]> {
            Request(path: path, method: "GET", query: makeGetQuery(isRedirect), id: "getAttachmentContent")
        }

        private func makeGetQuery(_ isRedirect: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(isRedirect, forKey: "redirect")
            return encoder.items
        }
    }
}
