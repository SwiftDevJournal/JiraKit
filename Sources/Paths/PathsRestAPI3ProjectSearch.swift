// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project {
    public var search: Search {
        Search(path: path + "/search")
    }

    public struct Search {
        /// Path: `/rest/api/3/project/search`
        public let path: String

        /// Get projects paginated
        ///
        /// Returns a [paginated](#pagination) list of projects visible to the user.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** Projects are returned only where the user has one of:
        /// 
        ///  *  *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.
        ///  *  *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanProject> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "searchProjects")
        }

        public struct GetParameters {
            public var startAt: Int64?
            public var maxResults: Int32?
            public var orderBy: OrderBy?
            public var id: [Int64]?
            public var keys: [String]?
            public var query: String?
            public var typeKey: String?
            public var categoryID: Int64?
            public var action: Action?
            public var expand: String?
            public var status: [Status]?
            public var propertyQuery: String?

            public enum OrderBy: String, Codable, CaseIterable {
                case category
                case minuscategory = "-category"
                case pluscategory = "+category"
                case key
                case minuskey = "-key"
                case pluskey = "+key"
                case name
                case minusname = "-name"
                case plusname = "+name"
                case owner
                case minusowner = "-owner"
                case plusowner = "+owner"
                case issueCount
                case minusissueCount = "-issueCount"
                case plusissueCount = "+issueCount"
                case lastIssueUpdatedDate
                case minuslastIssueUpdatedDate = "-lastIssueUpdatedDate"
                case pluslastIssueUpdatedDate = "+lastIssueUpdatedDate"
                case archivedDate
                case plusarchivedDate = "+archivedDate"
                case minusarchivedDate = "-archivedDate"
                case deletedDate
                case plusdeletedDate = "+deletedDate"
                case minusdeletedDate = "-deletedDate"
            }

            public enum Action: String, Codable, CaseIterable {
                case view
                case browse
                case edit
            }

            public enum Status: String, Codable, CaseIterable {
                case live
                case archived
                case deleted
            }

            public init(startAt: Int64? = nil, maxResults: Int32? = nil, orderBy: OrderBy? = nil, id: [Int64]? = nil, keys: [String]? = nil, query: String? = nil, typeKey: String? = nil, categoryID: Int64? = nil, action: Action? = nil, expand: String? = nil, status: [Status]? = nil, propertyQuery: String? = nil) {
                self.startAt = startAt
                self.maxResults = maxResults
                self.orderBy = orderBy
                self.id = id
                self.keys = keys
                self.query = query
                self.typeKey = typeKey
                self.categoryID = categoryID
                self.action = action
                self.expand = expand
                self.status = status
                self.propertyQuery = propertyQuery
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(orderBy, forKey: "orderBy")
                encoder.encode(id, forKey: "id")
                encoder.encode(keys, forKey: "keys")
                encoder.encode(query, forKey: "query")
                encoder.encode(typeKey, forKey: "typeKey")
                encoder.encode(categoryID, forKey: "categoryId")
                encoder.encode(action, forKey: "action")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(status, forKey: "status")
                encoder.encode(propertyQuery, forKey: "propertyQuery")
                return encoder.items
            }
        }
    }
}
