// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Issue.Properties {
    public var multi: Multi {
        Multi(path: path + "/multi")
    }

    public struct Multi {
        /// Path: `/rest/api/3/issue/properties/multi`
        public let path: String

        /// Bulk set issue properties by issue
        ///
        /// Sets or updates entity property values on issues. Up to 10 entity properties can be specified for each issue and up to 100 issues included in the request.
        /// 
        /// The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON.
        /// 
        /// This operation is:
        /// 
        ///  *  [asynchronous](#async). Follow the `location` link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.
        ///  *  non-transactional. Updating some entities may fail. Such information will available in the task result.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Browse projects* and *Edit issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.
        ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.
        public func post(_ body: JiraKit.MultiIssueEntityProperties) -> Request<Void> {
            Request(path: path, method: "POST", body: body, id: "bulkSetIssuePropertiesByIssue")
        }
    }
}
