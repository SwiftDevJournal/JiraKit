// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Field.WithFieldID {
    public var contexts: Contexts {
        Contexts(path: path + "/contexts")
    }

    public struct Contexts {
        /// Path: `/rest/api/3/field/{fieldId}/contexts`
        public let path: String

        /// Get contexts for a field
        ///
        /// Returns a [paginated](#pagination) list of the contexts a field is used in. Deprecated, use [ Get custom field contexts](#api-rest-api-3-field-fieldId-context-get).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        @available(*, deprecated, message: "Deprecated")
        public func get(startAt: Int? = nil, maxResults: Int? = nil) -> Request<JiraKit.PageBeanContext> {
            Request(method: "GET", url: path, query: makeGetQuery(startAt, maxResults), id: "getContextsForFieldDeprecated")
        }

        private func makeGetQuery(_ startAt: Int?, _ maxResults: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(startAt, forKey: "startAt")
            encoder.encode(maxResults, forKey: "maxResults")
            return encoder.items
        }
    }
}