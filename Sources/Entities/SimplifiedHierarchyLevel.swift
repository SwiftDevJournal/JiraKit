// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct SimplifiedHierarchyLevel: Codable {
    /// The ID of the hierarchy level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/).
    public var id: Int64?
    /// The name of this hierarchy level.
    public var name: String?
    /// The ID of the level above this one in the hierarchy. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/).
    public var aboveLevelID: Int64?
    /// The ID of the level below this one in the hierarchy. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/).
    public var belowLevelID: Int64?
    /// The ID of the project configuration. This property is deprecated, see [Change oticen: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/).
    public var projectConfigurationID: Int64?
    /// The level of this item in the hierarchy.
    public var level: Int32?
    /// The issue types available in this hierarchy level.
    public var issueTypeIDs: [Int64]?
    /// The external UUID of the hierarchy level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/).
    public var externalUUID: UUID?
    public var globalHierarchyLevel: GlobalHierarchyLevel?

    public enum GlobalHierarchyLevel: String, Codable, CaseIterable {
        case subtask = "SUBTASK"
        case base = "BASE"
        case epic = "EPIC"
    }

    public init(id: Int64? = nil, name: String? = nil, aboveLevelID: Int64? = nil, belowLevelID: Int64? = nil, projectConfigurationID: Int64? = nil, level: Int32? = nil, issueTypeIDs: [Int64]? = nil, externalUUID: UUID? = nil, globalHierarchyLevel: GlobalHierarchyLevel? = nil) {
        self.id = id
        self.name = name
        self.aboveLevelID = aboveLevelID
        self.belowLevelID = belowLevelID
        self.projectConfigurationID = projectConfigurationID
        self.level = level
        self.issueTypeIDs = issueTypeIDs
        self.externalUUID = externalUUID
        self.globalHierarchyLevel = globalHierarchyLevel
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int64.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.aboveLevelID = try values.decodeIfPresent(Int64.self, forKey: "aboveLevelId")
        self.belowLevelID = try values.decodeIfPresent(Int64.self, forKey: "belowLevelId")
        self.projectConfigurationID = try values.decodeIfPresent(Int64.self, forKey: "projectConfigurationId")
        self.level = try values.decodeIfPresent(Int32.self, forKey: "level")
        self.issueTypeIDs = try values.decodeIfPresent([Int64].self, forKey: "issueTypeIds")
        self.externalUUID = try values.decodeIfPresent(UUID.self, forKey: "externalUuid")
        self.globalHierarchyLevel = try values.decodeIfPresent(GlobalHierarchyLevel.self, forKey: "globalHierarchyLevel")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(aboveLevelID, forKey: "aboveLevelId")
        try values.encodeIfPresent(belowLevelID, forKey: "belowLevelId")
        try values.encodeIfPresent(projectConfigurationID, forKey: "projectConfigurationId")
        try values.encodeIfPresent(level, forKey: "level")
        try values.encodeIfPresent(issueTypeIDs, forKey: "issueTypeIds")
        try values.encodeIfPresent(externalUUID, forKey: "externalUuid")
        try values.encodeIfPresent(globalHierarchyLevel, forKey: "globalHierarchyLevel")
    }
}
