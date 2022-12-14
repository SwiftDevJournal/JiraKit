// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var dashboard: Dashboard {
        Dashboard(path: path + "/dashboard")
    }

    public struct Dashboard {
        /// Path: `/rest/api/3/dashboard`
        public let path: String

        /// Get all dashboards
        ///
        /// Returns a list of dashboards owned by or shared with the user. The list may be filtered to include only favorite or owned dashboards.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageOfDashboards> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getAllDashboards")
        }

        public struct GetParameters {
            public var filter: Filter?
            public var startAt: Int32?
            public var maxResults: Int32?

            public enum Filter: String, Codable, CaseIterable {
                case my
                case favourite
            }

            public init(filter: Filter? = nil, startAt: Int32? = nil, maxResults: Int32? = nil) {
                self.filter = filter
                self.startAt = startAt
                self.maxResults = maxResults
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(filter, forKey: "filter")
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                return encoder.items
            }
        }

        /// Create dashboard
        ///
        /// Creates a dashboard.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public func post(_ body: JiraKit.DashboardDetails) -> Request<JiraKit.Dashboard> {
            Request(path: path, method: "POST", body: body, id: "createDashboard")
        }
    }
}
