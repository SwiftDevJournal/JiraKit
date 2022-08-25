// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Metadata for an item in an attachment archive.
public struct AttachmentArchiveItemReadable: Codable {
    /// The path of the archive item.
    public var path: String?
    /// The position of the item within the archive.
    public var index: Int64?
    /// The size of the archive item.
    public var size: String?
    /// The MIME type of the archive item.
    public var mediaType: String?
    /// The label for the archive item.
    public var label: String?

    public init(path: String? = nil, index: Int64? = nil, size: String? = nil, mediaType: String? = nil, label: String? = nil) {
        self.path = path
        self.index = index
        self.size = size
        self.mediaType = mediaType
        self.label = label
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.path = try values.decodeIfPresent(String.self, forKey: "path")
        self.index = try values.decodeIfPresent(Int64.self, forKey: "index")
        self.size = try values.decodeIfPresent(String.self, forKey: "size")
        self.mediaType = try values.decodeIfPresent(String.self, forKey: "mediaType")
        self.label = try values.decodeIfPresent(String.self, forKey: "label")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(path, forKey: "path")
        try values.encodeIfPresent(index, forKey: "index")
        try values.encodeIfPresent(size, forKey: "size")
        try values.encodeIfPresent(mediaType, forKey: "mediaType")
        try values.encodeIfPresent(label, forKey: "label")
    }
}
