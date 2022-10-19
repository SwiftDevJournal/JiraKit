// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issuesecurityschemes {
    public func id(_ id: Int) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/issuesecurityschemes/{id}`
        public let path: String

        /// Get issue security scheme
        ///
        /// Returns an issue security scheme along with its security levels.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        ///  *  *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for a project that uses the requested issue security scheme.
        public var get: Request<JiraKit.SecurityScheme> {
            Request(path: path, method: "GET", id: "getIssueSecurityScheme")
        }
    }
}
