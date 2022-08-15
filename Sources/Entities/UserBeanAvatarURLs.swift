// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct UserBeanAvatarURLs: Codable {
    /// The URL of the user's 24x24 pixel avatar.
    public var _24x24: URL?
    /// The URL of the user's 32x32 pixel avatar.
    public var _32x32: URL?
    /// The URL of the user's 48x48 pixel avatar.
    public var _48x48: URL?
    /// The URL of the user's 16x16 pixel avatar.
    public var _16x16: URL?

    public init(_24x24: URL? = nil, _32x32: URL? = nil, _48x48: URL? = nil, _16x16: URL? = nil) {
        self._24x24 = _24x24
        self._32x32 = _32x32
        self._48x48 = _48x48
        self._16x16 = _16x16
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self._24x24 = try values.decodeIfPresent(URL.self, forKey: "24x24")
        self._32x32 = try values.decodeIfPresent(URL.self, forKey: "32x32")
        self._48x48 = try values.decodeIfPresent(URL.self, forKey: "48x48")
        self._16x16 = try values.decodeIfPresent(URL.self, forKey: "16x16")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(_24x24, forKey: "24x24")
        try values.encodeIfPresent(_32x32, forKey: "32x32")
        try values.encodeIfPresent(_48x48, forKey: "48x48")
        try values.encodeIfPresent(_16x16, forKey: "16x16")
    }
}