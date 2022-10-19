// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Task {
    public func taskID(_ taskID: String) -> WithTaskID {
        WithTaskID(path: "\(path)/\(taskID)")
    }

    public struct WithTaskID {
        /// Path: `/rest/api/3/task/{taskId}`
        public let path: String

        /// Get task
        ///
        /// Returns the status of a [long-running asynchronous task](#async).
        /// 
        /// When a task has finished, this operation returns the JSON blob applicable to the task. See the documentation of the operation that created the task for details. Task details are not permanently retained. As of September 2019, details are retained for 14 days although this period may change without notice.
        /// 
        /// **[Permissions](#permissions) required:** either of:
        /// 
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        ///  *  Creator of the task.
        public var get: Request<JiraKit.TaskProgressBeanObject> {
            Request(path: path, method: "GET", id: "getTask")
        }
    }
}
