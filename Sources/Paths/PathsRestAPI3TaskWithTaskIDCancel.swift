// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Task.WithTaskID {
    public var cancel: Cancel {
        Cancel(path: path + "/cancel")
    }

    public struct Cancel {
        /// Path: `/rest/api/3/task/{taskId}/cancel`
        public let path: String

        /// Cancel task
        ///
        /// Cancels a task.
        /// 
        /// **[Permissions](#permissions) required:** either of:
        /// 
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        ///  *  Creator of the task.
        public var post: Request<AnyJSON> {
            Request(method: "POST", url: path, id: "cancelTask")
        }
    }
}