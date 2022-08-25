// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Field.Search {
    public var trashed: Trashed {
        Trashed(path: path + "/trashed")
    }

    public struct Trashed {
        /// Path: `/rest/api/3/field/search/trashed`
        public let path: String

        /// Get fields in trash paginated
        ///
        /// Returns a [paginated](#pagination) list of fields in the trash. The list may be restricted to fields whose field name or description partially match a string.
        /// 
        /// Only custom fields can be queried, `type` must be set to `custom`.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanField> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "getTrashedFieldsPaginated")
        }

        public struct GetParameters {
            public var startAt: Int64?
            public var maxResults: Int32?
            public var id: [String]?
            public var query: String?
            public var orderBy: OrderBy?

            public enum OrderBy: String, Codable, CaseIterable {
                case name
                case minusname = "-name"
                case plusname = "+name"
                case trashDate
                case minustrashDate = "-trashDate"
                case plustrashDate = "+trashDate"
                case plannedDeletionDate
                case minusplannedDeletionDate = "-plannedDeletionDate"
                case plusplannedDeletionDate = "+plannedDeletionDate"
            }

            public init(startAt: Int64? = nil, maxResults: Int32? = nil, id: [String]? = nil, query: String? = nil, orderBy: OrderBy? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.id = id
                self.query = query
                self.orderBy = orderBy
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(id, forKey: "id")
                encoder.encode(query, forKey: "query")
                encoder.encode(orderBy, forKey: "orderBy")
                return encoder.items
            }
        }
    }
}
