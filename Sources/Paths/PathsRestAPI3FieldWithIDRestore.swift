// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Field.WithID {
    public var restore: Restore {
        Restore(path: path + "/restore")
    }

    public struct Restore {
        /// Path: `/rest/api/3/field/{id}/restore`
        public let path: String

        /// Restore custom field from trash
        ///
        /// Restores a custom field from trash. See [Edit or delete a custom field](https://confluence.atlassian.com/x/Z44fOw) for more information on trashing and deleting custom fields.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var post: Request<AnyJSON> {
            Request(method: "POST", url: path, id: "restoreCustomField")
        }
    }
}
