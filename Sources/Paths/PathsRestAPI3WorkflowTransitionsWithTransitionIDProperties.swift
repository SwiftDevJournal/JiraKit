// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Workflow.Transitions.WithTransitionID {
    public var properties: Properties {
        Properties(path: path + "/properties")
    }

    public struct Properties {
        /// Path: `/rest/api/3/workflow/transitions/{transitionId}/properties`
        public let path: String

        /// Get workflow transition properties
        ///
        /// Returns the properties on a workflow transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters) -> Request<JiraKit.WorkflowTransitionProperty> {
            Request(method: "GET", url: path, query: parameters.asQuery, id: "getWorkflowTransitionProperties")
        }

        public struct GetParameters {
            public var isIncludeReservedKeys: Bool?
            public var key: String?
            public var workflowName: String
            public var workflowMode: WorkflowMode?

            public enum WorkflowMode: String, Codable, CaseIterable {
                case live
                case draft
            }

            public init(isIncludeReservedKeys: Bool? = nil, key: String? = nil, workflowName: String, workflowMode: WorkflowMode? = nil) {
                self.isIncludeReservedKeys = isIncludeReservedKeys
                self.key = key
                self.workflowName = workflowName
                self.workflowMode = workflowMode
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isIncludeReservedKeys, forKey: "includeReservedKeys")
                encoder.encode(key, forKey: "key")
                encoder.encode(workflowName, forKey: "workflowName")
                encoder.encode(workflowMode, forKey: "workflowMode")
                return encoder.items
            }
        }

        /// Create workflow transition property
        ///
        /// Adds a property to a workflow transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func post(parameters: PostParameters, _ body: JiraKit.WorkflowTransitionProperty) -> Request<JiraKit.WorkflowTransitionProperty> {
            Request(method: "POST", url: path, query: parameters.asQuery, body: body, id: "createWorkflowTransitionProperty")
        }

        public struct PostParameters {
            public var key: String
            public var workflowName: String
            public var workflowMode: WorkflowMode?

            public enum WorkflowMode: String, Codable, CaseIterable {
                case live
                case draft
            }

            public init(key: String, workflowName: String, workflowMode: WorkflowMode? = nil) {
                self.key = key
                self.workflowName = workflowName
                self.workflowMode = workflowMode
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(key, forKey: "key")
                encoder.encode(workflowName, forKey: "workflowName")
                encoder.encode(workflowMode, forKey: "workflowMode")
                return encoder.items
            }
        }

        /// Update workflow transition property
        ///
        /// Updates a workflow transition by changing the property value. Trying to update a property that does not exist results in a new property being added to the transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(parameters: PutParameters, _ body: JiraKit.WorkflowTransitionProperty) -> Request<JiraKit.WorkflowTransitionProperty> {
            Request(method: "PUT", url: path, query: parameters.asQuery, body: body, id: "updateWorkflowTransitionProperty")
        }

        public struct PutParameters {
            public var key: String
            public var workflowName: String
            public var workflowMode: WorkflowMode?

            public enum WorkflowMode: String, Codable, CaseIterable {
                case live
                case draft
            }

            public init(key: String, workflowName: String, workflowMode: WorkflowMode? = nil) {
                self.key = key
                self.workflowName = workflowName
                self.workflowMode = workflowMode
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(key, forKey: "key")
                encoder.encode(workflowName, forKey: "workflowName")
                encoder.encode(workflowMode, forKey: "workflowMode")
                return encoder.items
            }
        }

        /// Delete workflow transition property
        ///
        /// Deletes a property from a workflow transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func delete(parameters: DeleteParameters) -> Request<Void> {
            Request(method: "DELETE", url: path, query: parameters.asQuery, id: "deleteWorkflowTransitionProperty")
        }

        public struct DeleteParameters {
            public var key: String
            public var workflowName: String
            public var workflowMode: WorkflowMode?

            public enum WorkflowMode: String, Codable, CaseIterable {
                case live
                case draft
            }

            public init(key: String, workflowName: String, workflowMode: WorkflowMode? = nil) {
                self.key = key
                self.workflowName = workflowName
                self.workflowMode = workflowMode
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(key, forKey: "key")
                encoder.encode(workflowName, forKey: "workflowName")
                encoder.encode(workflowMode, forKey: "workflowMode")
                return encoder.items
            }
        }
    }
}