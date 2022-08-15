// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Field.WithFieldID {
    public var screens: Screens {
        Screens(path: path + "/screens")
    }

    public struct Screens {
        /// Path: `/rest/api/3/field/{fieldId}/screens`
        public let path: String

        /// Get screens for a field
        ///
        /// Returns a [paginated](#pagination) list of the screens a field is used in.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanScreenWithTab> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "getScreensForField")
        }

        public struct GetParameters {
            public var startAt: Int?
            public var maxResults: Int?
            public var expand: String?

            public init(startAt: Int? = nil, maxResults: Int? = nil, expand: String? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
