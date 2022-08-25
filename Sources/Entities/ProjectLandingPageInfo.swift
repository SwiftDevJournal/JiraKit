// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct ProjectLandingPageInfo: Codable {
    public var url: String?
    public var projectKey: String?
    public var projectType: String?
    public var boardID: Int64?
    public var boardName: String?
    public var isSimpleBoard: Bool?
    public var queueID: Int64?
    public var queueName: String?
    public var queueCategory: String?
    public var isSimplified: Bool?
    public var attributes: [String: String]?

    public init(url: String? = nil, projectKey: String? = nil, projectType: String? = nil, boardID: Int64? = nil, boardName: String? = nil, isSimpleBoard: Bool? = nil, queueID: Int64? = nil, queueName: String? = nil, queueCategory: String? = nil, isSimplified: Bool? = nil, attributes: [String: String]? = nil) {
        self.url = url
        self.projectKey = projectKey
        self.projectType = projectType
        self.boardID = boardID
        self.boardName = boardName
        self.isSimpleBoard = isSimpleBoard
        self.queueID = queueID
        self.queueName = queueName
        self.queueCategory = queueCategory
        self.isSimplified = isSimplified
        self.attributes = attributes
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decodeIfPresent(String.self, forKey: "url")
        self.projectKey = try values.decodeIfPresent(String.self, forKey: "projectKey")
        self.projectType = try values.decodeIfPresent(String.self, forKey: "projectType")
        self.boardID = try values.decodeIfPresent(Int64.self, forKey: "boardId")
        self.boardName = try values.decodeIfPresent(String.self, forKey: "boardName")
        self.isSimpleBoard = try values.decodeIfPresent(Bool.self, forKey: "simpleBoard")
        self.queueID = try values.decodeIfPresent(Int64.self, forKey: "queueId")
        self.queueName = try values.decodeIfPresent(String.self, forKey: "queueName")
        self.queueCategory = try values.decodeIfPresent(String.self, forKey: "queueCategory")
        self.isSimplified = try values.decodeIfPresent(Bool.self, forKey: "simplified")
        self.attributes = try values.decodeIfPresent([String: String].self, forKey: "attributes")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(url, forKey: "url")
        try values.encodeIfPresent(projectKey, forKey: "projectKey")
        try values.encodeIfPresent(projectType, forKey: "projectType")
        try values.encodeIfPresent(boardID, forKey: "boardId")
        try values.encodeIfPresent(boardName, forKey: "boardName")
        try values.encodeIfPresent(isSimpleBoard, forKey: "simpleBoard")
        try values.encodeIfPresent(queueID, forKey: "queueId")
        try values.encodeIfPresent(queueName, forKey: "queueName")
        try values.encodeIfPresent(queueCategory, forKey: "queueCategory")
        try values.encodeIfPresent(isSimplified, forKey: "simplified")
        try values.encodeIfPresent(attributes, forKey: "attributes")
    }
}
