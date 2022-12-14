// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Workflowscheme.WithID.Draft {
    public var workflow: Workflow {
        Workflow(path: path + "/workflow")
    }

    public struct Workflow {
        /// Path: `/rest/api/3/workflowscheme/{id}/draft/workflow`
        public let path: String

        /// Get issue types for workflows in draft workflow scheme
        ///
        /// Returns the workflow-issue type mappings for a workflow scheme's draft.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(workflowName: String? = nil) -> Request<JiraKit.IssueTypesWorkflowMapping> {
            Request(path: path, method: "GET", query: makeGetQuery(workflowName), id: "getDraftWorkflow")
        }

        private func makeGetQuery(_ workflowName: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(workflowName, forKey: "workflowName")
            return encoder.items
        }

        /// Set issue types for workflow in workflow scheme
        ///
        /// Sets the issue types for a workflow in a workflow scheme's draft. The workflow can also be set as the default workflow for the draft workflow scheme. Unmapped issues types are mapped to the default workflow.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(workflowName: String, _ body: JiraKit.IssueTypesWorkflowMapping) -> Request<JiraKit.WorkflowScheme> {
            Request(path: path, method: "PUT", query: [("workflowName", workflowName)], body: body, id: "updateDraftWorkflowMapping")
        }

        /// Delete issue types for workflow in draft workflow scheme
        ///
        /// Deletes the workflow-issue type mapping for a workflow in a workflow scheme's draft.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func delete(workflowName: String) -> Request<Void> {
            Request(path: path, method: "DELETE", query: [("workflowName", workflowName)], id: "deleteDraftWorkflowMapping")
        }
    }
}
