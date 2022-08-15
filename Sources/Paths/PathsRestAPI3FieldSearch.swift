// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Field {
    public var search: Search {
        Search(path: path + "/search")
    }

    public struct Search {
        /// Path: `/rest/api/3/field/search`
        public let path: String

        /// Get fields paginated
        ///
        /// Returns a [paginated](#pagination) list of fields for Classic Jira projects. The list can include:
        /// 
        ///  *  all fields
        ///  *  specific fields, by defining `id`
        ///  *  fields that contain a string in the field name or description, by defining `query`
        ///  *  specific fields that contain a string in the field name or description, by defining `id` and `query`
        /// 
        /// Only custom fields can be queried, `type` must be set to `custom`.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanField> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "getFieldsPaginated")
        }

        public struct GetParameters {
            public var startAt: Int?
            public var maxResults: Int?
            public var type: [`Type`]?
            public var id: [String]?
            public var query: String?
            public var orderBy: OrderBy?
            public var expand: String?

            public enum `Type`: String, Codable, CaseIterable {
                case custom
                case system
            }

            public enum OrderBy: String, Codable, CaseIterable {
                case contextsCount
                case minuscontextsCount = "-contextsCount"
                case pluscontextsCount = "+contextsCount"
                case lastUsed
                case minuslastUsed = "-lastUsed"
                case pluslastUsed = "+lastUsed"
                case name
                case minusname = "-name"
                case plusname = "+name"
                case screensCount
                case minusscreensCount = "-screensCount"
                case plusscreensCount = "+screensCount"
            }

            public init(startAt: Int? = nil, maxResults: Int? = nil, type: [`Type`]? = nil, id: [String]? = nil, query: String? = nil, orderBy: OrderBy? = nil, expand: String? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.type = type
                self.id = id
                self.query = query
                self.orderBy = orderBy
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(type, forKey: "type")
                encoder.encode(id, forKey: "id")
                encoder.encode(query, forKey: "query")
                encoder.encode(orderBy, forKey: "orderBy")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
