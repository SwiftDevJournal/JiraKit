// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Jql {
    public var pdcleaner: Pdcleaner {
        Pdcleaner(path: path + "/pdcleaner")
    }

    public struct Pdcleaner {
        /// Path: `/rest/api/3/jql/pdcleaner`
        public let path: String

        /// Convert user identifiers to account IDs in JQL queries
        ///
        /// Converts one or more JQL queries with user identifiers (username or user key) to equivalent JQL queries with account IDs.
        /// 
        /// You may wish to use this operation if your system stores JQL queries and you want to make them GDPR-compliant. For more information about GDPR-related changes, see the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/).
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public func post(_ body: JiraKit.JQLPersonalDataMigrationRequest) -> Request<JiraKit.ConvertedJQLQueries> {
            Request(method: "POST", url: path, body: body, id: "migrateQueries")
        }
    }
}