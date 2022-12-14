// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Workflowscheme.WithID {
    public var workflow: Workflow {
        Workflow(path: path + "/workflow")
    }

    public struct Workflow {
        /// Path: `/rest/api/3/workflowscheme/{id}/workflow`
        public let path: String

        /// Get issue types for workflows in workflow scheme
        ///
        /// Returns the workflow-issue type mappings for a workflow scheme.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(workflowName: String? = nil, isReturnDraftIfExists: Bool? = nil) -> Request<JiraKit.IssueTypesWorkflowMapping> {
            Request(path: path, method: "GET", query: makeGetQuery(workflowName, isReturnDraftIfExists), id: "getWorkflow")
        }

        private func makeGetQuery(_ workflowName: String?, _ isReturnDraftIfExists: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(workflowName, forKey: "workflowName")
            encoder.encode(isReturnDraftIfExists, forKey: "returnDraftIfExists")
            return encoder.items
        }

        /// Set issue types for workflow in workflow scheme
        ///
        /// Sets the issue types for a workflow in a workflow scheme. The workflow can also be set as the default workflow for the workflow scheme. Unmapped issues types are mapped to the default workflow.
        /// 
        /// Note that active workflow schemes cannot be edited. If the workflow scheme is active, set `updateDraftIfNeeded` to `true` in the request body and a draft workflow scheme is created or updated with the new workflow-issue types mappings. The draft workflow scheme can be published in Jira.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(workflowName: String, _ body: JiraKit.IssueTypesWorkflowMapping) -> Request<JiraKit.WorkflowScheme> {
            Request(path: path, method: "PUT", query: [("workflowName", workflowName)], body: body, id: "updateWorkflowMapping")
        }

        /// Delete issue types for workflow in workflow scheme
        ///
        /// Deletes the workflow-issue type mapping for a workflow in a workflow scheme.
        /// 
        /// Note that active workflow schemes cannot be edited. If the workflow scheme is active, set `updateDraftIfNeeded` to `true` and a draft workflow scheme is created or updated with the workflow-issue type mapping deleted. The draft workflow scheme can be published in Jira.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func delete(workflowName: String, isUpdateDraftIfNeeded: Bool? = nil) -> Request<Void> {
            Request(path: path, method: "DELETE", query: makeDeleteQuery(workflowName, isUpdateDraftIfNeeded), id: "deleteWorkflowMapping")
        }

        private func makeDeleteQuery(_ workflowName: String, _ isUpdateDraftIfNeeded: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(workflowName, forKey: "workflowName")
            encoder.encode(isUpdateDraftIfNeeded, forKey: "updateDraftIfNeeded")
            return encoder.items
        }
    }
}
