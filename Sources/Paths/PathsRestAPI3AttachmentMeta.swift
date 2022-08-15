// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Attachment {
    public var meta: Meta {
        Meta(path: path + "/meta")
    }

    public struct Meta {
        /// Path: `/rest/api/3/attachment/meta`
        public let path: String

        /// Get Jira attachment settings
        ///
        /// Returns the attachment settings, that is, whether attachments are enabled and the maximum attachment size allowed.
        /// 
        /// Note that there are also [project permissions](https://confluence.atlassian.com/x/yodKLg) that restrict whether users can create and delete attachments.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public var get: Request<JiraKit.AttachmentSettings> {
            Request(method: "GET", url: path, id: "getAttachmentMeta")
        }
    }
}
