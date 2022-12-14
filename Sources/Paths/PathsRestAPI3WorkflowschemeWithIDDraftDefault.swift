// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Workflowscheme.WithID.Draft {
    public var `default`: Default {
        Default(path: path + "/default")
    }

    public struct Default {
        /// Path: `/rest/api/3/workflowscheme/{id}/draft/default`
        public let path: String

        /// Get draft default workflow
        ///
        /// Returns the default workflow for a workflow scheme's draft. The default workflow is the workflow that is assigned any issue types that have not been mapped to any other workflow. The default workflow has *All Unassigned Issue Types* listed in its issue types for the workflow scheme in Jira.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var get: Request<JiraKit.DefaultWorkflow> {
            Request(path: path, method: "GET", id: "getDraftDefaultWorkflow")
        }

        /// Update draft default workflow
        ///
        /// Sets the default workflow for a workflow scheme's draft.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.DefaultWorkflow) -> Request<JiraKit.WorkflowScheme> {
            Request(path: path, method: "PUT", body: body, id: "updateDraftDefaultWorkflow")
        }

        /// Delete draft default workflow
        ///
        /// Resets the default workflow for a workflow scheme's draft. That is, the default workflow is set to Jira's system workflow (the *jira* workflow).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<JiraKit.WorkflowScheme> {
            Request(path: path, method: "DELETE", id: "deleteDraftDefaultWorkflow")
        }
    }
}
