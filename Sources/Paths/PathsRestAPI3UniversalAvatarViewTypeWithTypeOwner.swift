// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.UniversalAvatar.View.`Type`.WithType {
    public var owner: Owner {
        Owner(path: path + "/owner")
    }

    public struct Owner {
        /// Path: `/rest/api/3/universal_avatar/view/type/{type}/owner`
        public let path: String
    }
}
