// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.WithProjectIDOrKey {
    public var component: Component {
        Component(path: path + "/component")
    }

    public struct Component {
        /// Path: `/rest/api/3/project/{projectIdOrKey}/component`
        public let path: String

        /// Get project components paginated
        ///
        /// Returns a [paginated](#pagination) list of all components in a project. See the [Get project components](#api-rest-api-3-project-projectIdOrKey-components-get) resource if you want to get a full list of versions without pagination.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanComponentWithIssueCount> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getProjectComponentsPaginated")
        }

        public struct GetParameters {
            public var startAt: Int64?
            public var maxResults: Int32?
            public var orderBy: OrderBy?
            public var query: String?

            public enum OrderBy: String, Codable, CaseIterable {
                case description
                case minusdescription = "-description"
                case plusdescription = "+description"
                case issueCount
                case minusissueCount = "-issueCount"
                case plusissueCount = "+issueCount"
                case lead
                case minuslead = "-lead"
                case pluslead = "+lead"
                case name
                case minusname = "-name"
                case plusname = "+name"
            }

            public init(startAt: Int64? = nil, maxResults: Int32? = nil, orderBy: OrderBy? = nil, query: String? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.orderBy = orderBy
                self.query = query
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(orderBy, forKey: "orderBy")
                encoder.encode(query, forKey: "query")
                return encoder.items
            }
        }
    }
}
