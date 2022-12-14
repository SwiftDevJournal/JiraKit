// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.User {
    public var columns: Columns {
        Columns(path: path + "/columns")
    }

    public struct Columns {
        /// Path: `/rest/api/3/user/columns`
        public let path: String

        /// Get user default columns
        ///
        /// Returns the default [issue table columns](https://confluence.atlassian.com/x/XYdKLg) for the user. If `accountId` is not passed in the request, the calling user's details are returned.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLgl), to get the column details for any user.
        ///  *  Permission to access Jira, to get the calling user's column details.
        public func get(accountID: String? = nil, username: String? = nil) -> Request<[JiraKit.ColumnItem]> {
            Request(path: path, method: "GET", query: makeGetQuery(accountID, username), id: "getUserDefaultColumns")
        }

        private func makeGetQuery(_ accountID: String?, _ username: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(accountID, forKey: "accountId")
            encoder.encode(username, forKey: "username")
            return encoder.items
        }

        /// Set user default columns
        ///
        /// Sets the default [ issue table columns](https://confluence.atlassian.com/x/XYdKLg) for the user. If an account ID is not passed, the calling user's default columns are set. If no column details are sent, then all default columns are removed.
        /// 
        /// The parameters for this resource are expressed as HTML form data. For example, in curl:
        /// 
        /// `curl -X PUT -d columns=summary -d columns=description https://your-domain.atlassian.net/rest/api/3/user/columns?accountId=5b10ac8d82e05b22cc7d4ef5'`
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to set the columns on any user.
        ///  *  Permission to access Jira, to set the calling user's columns.
        public func put(accountID: String? = nil, _ body: Data? = nil) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", query: makePutQuery(accountID), body: body, id: "setUserColumns")
        }

        private func makePutQuery(_ accountID: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(accountID, forKey: "accountId")
            return encoder.items
        }

        /// Reset user default columns
        ///
        /// Resets the default [ issue table columns](https://confluence.atlassian.com/x/XYdKLg) for the user to the system default. If `accountId` is not passed, the calling user's default columns are reset.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to set the columns on any user.
        ///  *  Permission to access Jira, to set the calling user's columns.
        public func delete(accountID: String? = nil, username: String? = nil) -> Request<Void> {
            Request(path: path, method: "DELETE", query: makeDeleteQuery(accountID, username), id: "resetUserColumns")
        }

        private func makeDeleteQuery(_ accountID: String?, _ username: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(accountID, forKey: "accountId")
            encoder.encode(username, forKey: "username")
            return encoder.items
        }
    }
}
