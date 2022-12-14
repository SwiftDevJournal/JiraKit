// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct AttachmentArchiveEntry: Codable {
    public var mediaType: String?
    public var abbreviatedName: String?
    public var entryIndex: Int64?
    public var name: String?
    public var size: Int64?

    public init(mediaType: String? = nil, abbreviatedName: String? = nil, entryIndex: Int64? = nil, name: String? = nil, size: Int64? = nil) {
        self.mediaType = mediaType
        self.abbreviatedName = abbreviatedName
        self.entryIndex = entryIndex
        self.name = name
        self.size = size
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.mediaType = try values.decodeIfPresent(String.self, forKey: "mediaType")
        self.abbreviatedName = try values.decodeIfPresent(String.self, forKey: "abbreviatedName")
        self.entryIndex = try values.decodeIfPresent(Int64.self, forKey: "entryIndex")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.size = try values.decodeIfPresent(Int64.self, forKey: "size")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(mediaType, forKey: "mediaType")
        try values.encodeIfPresent(abbreviatedName, forKey: "abbreviatedName")
        try values.encodeIfPresent(entryIndex, forKey: "entryIndex")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(size, forKey: "size")
    }
}
