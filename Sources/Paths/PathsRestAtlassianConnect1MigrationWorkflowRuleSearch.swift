// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.AtlassianConnect.__1.Migration.Workflow.Rule {
    public var search: Search {
        Search(path: path + "/search")
    }

    public struct Search {
        /// Path: `/rest/atlassian-connect/1/migration/workflow/rule/search`
        public let path: String

        /// Get workflow transition rule configurations
        ///
        /// Returns configurations for workflow transition rules migrated from server to cloud and owned by the calling Connect app.
        public func post(_ body: JiraKit.WorkflowRulesSearch) -> Request<JiraKit.WorkflowRulesSearchDetails> {
            Request(method: "POST", url: path, body: body, id: "MigrationResource.workflowRuleSearch_post")
        }
    }
}