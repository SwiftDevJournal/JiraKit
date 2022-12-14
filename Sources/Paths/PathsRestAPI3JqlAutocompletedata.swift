// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Jql {
    public var autocompletedata: Autocompletedata {
        Autocompletedata(path: path + "/autocompletedata")
    }

    public struct Autocompletedata {
        /// Path: `/rest/api/3/jql/autocompletedata`
        public let path: String

        /// Get field reference data (GET)
        ///
        /// Returns reference data for JQL searches. This is a downloadable version of the documentation provided in [Advanced searching - fields reference](https://confluence.atlassian.com/x/gwORLQ) and [Advanced searching - functions reference](https://confluence.atlassian.com/x/hgORLQ), along with a list of JQL-reserved words. Use this information to assist with the programmatic creation of JQL queries or the validation of queries built in a custom query builder.
        /// 
        /// To filter visible field details by project or collapse non-unique fields by field type then [Get field reference data (POST)](#api-rest-api-3-jql-autocompletedata-post) can be used.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public var get: Request<JiraKit.JQLReferenceData> {
            Request(path: path, method: "GET", id: "getAutoComplete")
        }

        /// Get field reference data (POST)
        ///
        /// Returns reference data for JQL searches. This is a downloadable version of the documentation provided in [Advanced searching - fields reference](https://confluence.atlassian.com/x/gwORLQ) and [Advanced searching - functions reference](https://confluence.atlassian.com/x/hgORLQ), along with a list of JQL-reserved words. Use this information to assist with the programmatic creation of JQL queries or the validation of queries built in a custom query builder.
        /// 
        /// This operation can filter the custom fields returned by project. Invalid project IDs in `projectIds` are ignored. System fields are always returned.
        /// 
        /// It can also return the collapsed field for custom fields. Collapsed fields enable searches to be performed across all fields with the same name and of the same field type. For example, the collapsed field `Component - Component[Dropdown]` enables dropdown fields `Component - cf[10061]` and `Component - cf[10062]` to be searched simultaneously.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public func post(_ body: JiraKit.SearchAutoCompleteFilter) -> Request<JiraKit.JQLReferenceData> {
            Request(path: path, method: "POST", body: body, id: "getAutoCompletePost")
        }
    }
}
