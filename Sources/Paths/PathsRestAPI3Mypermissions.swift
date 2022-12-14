// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var mypermissions: Mypermissions {
        Mypermissions(path: path + "/mypermissions")
    }

    public struct Mypermissions {
        /// Path: `/rest/api/3/mypermissions`
        public let path: String

        /// Get my permissions
        ///
        /// Returns a list of permissions indicating which permissions the user has. Details of the user's permissions can be obtained in a global, project, issue or comment context.
        /// 
        /// The user is reported as having a project permission:
        /// 
        ///  *  in the global context, if the user has the project permission in any project.
        ///  *  for a project, where the project permission is determined using issue data, if the user meets the permission's criteria for any issue in the project. Otherwise, if the user has the project permission in the project.
        ///  *  for an issue, where a project permission is determined using issue data, if the user has the permission in the issue. Otherwise, if the user has the project permission in the project containing the issue.
        ///  *  for a comment, where the user has both the permission to browse the comment and the project permission for the comment's parent issue. Only the BROWSE\_PROJECTS permission is supported. If a `commentId` is provided whose `permissions` does not equal BROWSE\_PROJECTS, a 400 error will be returned.
        /// 
        /// This means that users may be shown as having an issue permission (such as EDIT\_ISSUES) in the global context or a project context but may not have the permission for any or all issues. For example, if Reporters have the EDIT\_ISSUES permission a user would be shown as having this permission in the global context or the context of a project, because any user can be a reporter. However, if they are not the user who reported the issue queried they would not have EDIT\_ISSUES permission for that issue.
        /// 
        /// Global permissions are unaffected by context.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.Permissions> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getMyPermissions")
        }

        public struct GetParameters {
            public var projectKey: String?
            public var projectID: String?
            public var issueKey: String?
            public var issueID: String?
            /// Example: "BROWSE_PROJECTS,EDIT_ISSUES"
            public var permissions: String?
            public var projectUUID: String?
            public var projectConfigurationUUID: String?
            public var commentID: String?

            public init(projectKey: String? = nil, projectID: String? = nil, issueKey: String? = nil, issueID: String? = nil, permissions: String? = nil, projectUUID: String? = nil, projectConfigurationUUID: String? = nil, commentID: String? = nil) {
                self.projectKey = projectKey
                self.projectID = projectID
                self.issueKey = issueKey
                self.issueID = issueID
                self.permissions = permissions
                self.projectUUID = projectUUID
                self.projectConfigurationUUID = projectConfigurationUUID
                self.commentID = commentID
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(projectKey, forKey: "projectKey")
                encoder.encode(projectID, forKey: "projectId")
                encoder.encode(issueKey, forKey: "issueKey")
                encoder.encode(issueID, forKey: "issueId")
                encoder.encode(permissions, forKey: "permissions")
                encoder.encode(projectUUID, forKey: "projectUuid")
                encoder.encode(projectConfigurationUUID, forKey: "projectConfigurationUuid")
                encoder.encode(commentID, forKey: "commentId")
                return encoder.items
            }
        }
    }
}
