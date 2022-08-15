// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Projectvalidate {
    public var key: Key {
        Key(path: path + "/key")
    }

    public struct Key {
        /// Path: `/rest/api/3/projectvalidate/key`
        public let path: String

        /// Validate project key
        ///
        /// Validates a project key by confirming the key is a valid string and not in use.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public func get(key: String? = nil) -> Request<JiraKit.ErrorCollection> {
            Request(method: "GET", url: path, query: makeGetQuery(key), id: "validateProjectKey")
        }

        private func makeGetQuery(_ key: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(key, forKey: "key")
            return encoder.items
        }
    }
}