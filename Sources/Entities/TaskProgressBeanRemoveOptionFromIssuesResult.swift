// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about a task.
public struct TaskProgressBeanRemoveOptionFromIssuesResult: Codable {
    /// The URL of the task.
    public var this: URL
    /// The ID of the task.
    public var id: String
    /// The description of the task.
    public var description: String?
    /// The status of the task.
    public var status: Status
    /// Information about the progress of the task.
    public var message: String?
    /// The result of the task execution.
    public var result: RemoveOptionFromIssuesResult?
    /// The ID of the user who submitted the task.
    public var submittedBy: Int64
    /// The progress of the task, as a percentage complete.
    public var progress: Int64
    /// The execution time of the task, in milliseconds.
    public var elapsedRuntime: Int64
    /// A timestamp recording when the task was submitted.
    public var submitted: Int64
    /// A timestamp recording when the task was started.
    public var started: Int64?
    /// A timestamp recording when the task was finished.
    public var finished: Int64?
    /// A timestamp recording when the task progress was last updated.
    public var lastUpdate: Int64

    /// The status of the task.
    public enum Status: String, Codable, CaseIterable {
        case enqueued = "ENQUEUED"
        case running = "RUNNING"
        case complete = "COMPLETE"
        case failed = "FAILED"
        case cancelRequested = "CANCEL_REQUESTED"
        case cancelled = "CANCELLED"
        case dead = "DEAD"
    }

    public init(this: URL, id: String, description: String? = nil, status: Status, message: String? = nil, result: RemoveOptionFromIssuesResult? = nil, submittedBy: Int64, progress: Int64, elapsedRuntime: Int64, submitted: Int64, started: Int64? = nil, finished: Int64? = nil, lastUpdate: Int64) {
        self.this = this
        self.id = id
        self.description = description
        self.status = status
        self.message = message
        self.result = result
        self.submittedBy = submittedBy
        self.progress = progress
        self.elapsedRuntime = elapsedRuntime
        self.submitted = submitted
        self.started = started
        self.finished = finished
        self.lastUpdate = lastUpdate
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decode(URL.self, forKey: "self")
        self.id = try values.decode(String.self, forKey: "id")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.status = try values.decode(Status.self, forKey: "status")
        self.message = try values.decodeIfPresent(String.self, forKey: "message")
        self.result = try values.decodeIfPresent(RemoveOptionFromIssuesResult.self, forKey: "result")
        self.submittedBy = try values.decode(Int64.self, forKey: "submittedBy")
        self.progress = try values.decode(Int64.self, forKey: "progress")
        self.elapsedRuntime = try values.decode(Int64.self, forKey: "elapsedRuntime")
        self.submitted = try values.decode(Int64.self, forKey: "submitted")
        self.started = try values.decodeIfPresent(Int64.self, forKey: "started")
        self.finished = try values.decodeIfPresent(Int64.self, forKey: "finished")
        self.lastUpdate = try values.decode(Int64.self, forKey: "lastUpdate")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(this, forKey: "self")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encode(status, forKey: "status")
        try values.encodeIfPresent(message, forKey: "message")
        try values.encodeIfPresent(result, forKey: "result")
        try values.encode(submittedBy, forKey: "submittedBy")
        try values.encode(progress, forKey: "progress")
        try values.encode(elapsedRuntime, forKey: "elapsedRuntime")
        try values.encode(submitted, forKey: "submitted")
        try values.encodeIfPresent(started, forKey: "started")
        try values.encodeIfPresent(finished, forKey: "finished")
        try values.encode(lastUpdate, forKey: "lastUpdate")
    }
}
