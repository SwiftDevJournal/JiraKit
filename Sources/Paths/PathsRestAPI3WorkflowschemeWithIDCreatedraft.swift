// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Workflowscheme.WithID {
    public var createdraft: Createdraft {
        Createdraft(path: path + "/createdraft")
    }

    public struct Createdraft {
        /// Path: `/rest/api/3/workflowscheme/{id}/createdraft`
        public let path: String

        /// Create draft workflow scheme
        ///
        /// Create a draft workflow scheme from an active workflow scheme, by copying the active workflow scheme. Note that an active workflow scheme can only have one draft workflow scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var post: Request<JiraKit.WorkflowScheme> {
            Request(method: "POST", url: path, id: "createWorkflowSchemeDraftFromParent")
        }
    }
}
