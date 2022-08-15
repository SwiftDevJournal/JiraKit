// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The IDs of the screens for the screen types of the screen scheme.
public struct ScreenTypes: Codable {
    /// The ID of the edit screen.
    public var edit: Int?
    /// The ID of the create screen.
    public var create: Int?
    /// The ID of the view screen.
    public var view: Int?
    /// The ID of the default screen. Required when creating a screen scheme.
    public var `default`: Int?
    public var defaultScreen: AnyJSON

    public init(edit: Int? = nil, create: Int? = nil, view: Int? = nil, `default`: Int? = nil, defaultScreen: AnyJSON) {
        self.edit = edit
        self.create = create
        self.view = view
        self.default = `default`
        self.defaultScreen = defaultScreen
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.edit = try values.decodeIfPresent(Int.self, forKey: "edit")
        self.create = try values.decodeIfPresent(Int.self, forKey: "create")
        self.view = try values.decodeIfPresent(Int.self, forKey: "view")
        self.default = try values.decodeIfPresent(Int.self, forKey: "default")
        self.defaultScreen = try values.decode(AnyJSON.self, forKey: "defaultScreen")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(edit, forKey: "edit")
        try values.encodeIfPresent(create, forKey: "create")
        try values.encodeIfPresent(view, forKey: "view")
        try values.encodeIfPresent(`default`, forKey: "default")
        try values.encode(defaultScreen, forKey: "defaultScreen")
    }
}
