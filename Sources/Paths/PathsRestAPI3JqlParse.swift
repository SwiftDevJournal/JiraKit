// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Jql {
    public var parse: Parse {
        Parse(path: path + "/parse")
    }

    public struct Parse {
        /// Path: `/rest/api/3/jql/parse`
        public let path: String

        /// Parse JQL query
        ///
        /// Parses and validates JQL queries.
        /// 
        /// Validation is performed in context of the current user.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** None.
        public func post(validation: Validation? = nil, _ body: JiraKit.JqlQueriesToParse) -> Request<JiraKit.ParsedJqlQueries> {
            Request(method: "POST", url: path, query: makePostQuery(validation), body: body, id: "parseJqlQueries")
        }

        private func makePostQuery(_ validation: Validation?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(validation, forKey: "validation")
            return encoder.items
        }

        public enum Validation: String, Codable, CaseIterable {
            case strict
            case warn
            case `none`
        }
    }
}