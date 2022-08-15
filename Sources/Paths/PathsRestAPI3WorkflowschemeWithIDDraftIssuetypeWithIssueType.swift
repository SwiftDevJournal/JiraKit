// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Workflowscheme.WithID.Draft.Issuetype {
    public func issueType(_ issueType: String) -> WithIssueType {
        WithIssueType(path: "\(path)/\(issueType)")
    }

    public struct WithIssueType {
        /// Path: `/rest/api/3/workflowscheme/{id}/draft/issuetype/{issueType}`
        public let path: String

        /// Get workflow for issue type in draft workflow scheme
        ///
        /// Returns the issue type-workflow mapping for an issue type in a workflow scheme's draft.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var get: Request<JiraKit.IssueTypeWorkflowMapping> {
            Request(method: "GET", url: path, id: "getWorkflowSchemeDraftIssueType")
        }

        /// Set workflow for issue type in draft workflow scheme
        ///
        /// Sets the workflow for an issue type in a workflow scheme's draft.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.IssueTypeWorkflowMapping) -> Request<JiraKit.WorkflowScheme> {
            Request(method: "PUT", url: path, body: body, id: "setWorkflowSchemeDraftIssueType")
        }

        /// Delete workflow for issue type in draft workflow scheme
        ///
        /// Deletes the issue type-workflow mapping for an issue type in a workflow scheme's draft.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var delete: Request<JiraKit.WorkflowScheme> {
            Request(method: "DELETE", url: path, id: "deleteWorkflowSchemeDraftIssueType")
        }
    }
}