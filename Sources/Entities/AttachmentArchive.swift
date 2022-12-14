// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct AttachmentArchive: Codable {
    public var totalNumberOfEntriesAvailable: Int32?
    public var totalEntryCount: Int32?
    public var isMoreAvailable: Bool?
    public var entries: [AttachmentArchiveEntry]?

    public init(totalNumberOfEntriesAvailable: Int32? = nil, totalEntryCount: Int32? = nil, isMoreAvailable: Bool? = nil, entries: [AttachmentArchiveEntry]? = nil) {
        self.totalNumberOfEntriesAvailable = totalNumberOfEntriesAvailable
        self.totalEntryCount = totalEntryCount
        self.isMoreAvailable = isMoreAvailable
        self.entries = entries
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.totalNumberOfEntriesAvailable = try values.decodeIfPresent(Int32.self, forKey: "totalNumberOfEntriesAvailable")
        self.totalEntryCount = try values.decodeIfPresent(Int32.self, forKey: "totalEntryCount")
        self.isMoreAvailable = try values.decodeIfPresent(Bool.self, forKey: "moreAvailable")
        self.entries = try values.decodeIfPresent([AttachmentArchiveEntry].self, forKey: "entries")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(totalNumberOfEntriesAvailable, forKey: "totalNumberOfEntriesAvailable")
        try values.encodeIfPresent(totalEntryCount, forKey: "totalEntryCount")
        try values.encodeIfPresent(isMoreAvailable, forKey: "moreAvailable")
        try values.encodeIfPresent(entries, forKey: "entries")
    }
}
