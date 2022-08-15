// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var issuesecurityschemes: Issuesecurityschemes {
        Issuesecurityschemes(path: path + "/issuesecurityschemes")
    }

    public struct Issuesecurityschemes {
        /// Path: `/rest/api/3/issuesecurityschemes`
        public let path: String

        /// Get issue security schemes
        ///
        /// Returns all [issue security schemes](https://confluence.atlassian.com/x/J4lKLg).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var get: Request<JiraKit.SecuritySchemes> {
            Request(method: "GET", url: path, id: "getIssueSecuritySchemes")
        }
    }
}
