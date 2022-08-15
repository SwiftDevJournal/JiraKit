// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var issuetype: Issuetype {
        Issuetype(path: path + "/issuetype")
    }

    public struct Issuetype {
        /// Path: `/rest/api/3/issuetype`
        public let path: String

        /// Get all issue types for user
        ///
        /// Returns all issue types.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** Issue types are only returned as follows:
        /// 
        ///  *  if the user has the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), all issue types are returned.
        ///  *  if the user has the *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for one or more projects, the issue types associated with the projects the user has permission to browse are returned.
        public var get: Request<[JiraKit.IssueTypeDetails]> {
            Request(method: "GET", url: path, id: "getIssueAllTypes")
        }

        /// Create issue type
        ///
        /// Creates an issue type and adds it to the default issue type scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func post(_ body: JiraKit.IssueTypeCreateBean) -> Request<JiraKit.IssueTypeDetails> {
            Request(method: "POST", url: path, body: body, id: "createIssueType")
        }
    }
}