// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Worklog {
    public var list: List {
        List(path: path + "/list")
    }

    public struct List {
        /// Path: `/rest/api/3/worklog/list`
        public let path: String

        /// Get worklogs
        ///
        /// Returns worklog details for a list of worklog IDs.
        /// 
        /// The returned list of worklogs is limited to 1000 items.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira, however, worklogs are only returned where either of the following is true:
        /// 
        ///  *  the worklog is set as *Viewable by All Users*.
        ///  *  the user is a member of a project role or group with permission to view the worklog.
        public func post(expand: String? = nil, _ body: JiraKit.WorklogIDsRequestBean) -> Request<[JiraKit.Worklog]> {
            Request(method: "POST", url: path, query: makePostQuery(expand), body: body, id: "getWorklogsForIds")
        }

        private func makePostQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }
    }
}
