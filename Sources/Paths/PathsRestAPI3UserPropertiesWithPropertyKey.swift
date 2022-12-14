// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.User.Properties {
    public func propertyKey(_ propertyKey: String) -> WithPropertyKey {
        WithPropertyKey(path: "\(path)/\(propertyKey)")
    }

    public struct WithPropertyKey {
        /// Path: `/rest/api/3/user/properties/{propertyKey}`
        public let path: String

        /// Get user property
        ///
        /// Returns the value of a user's property. If no property key is provided [Get user property keys](#api-rest-api-3-user-properties-get) is called.
        /// 
        /// Note: This operation does not access the [user properties](https://confluence.atlassian.com/x/8YxjL) created and maintained in Jira.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to get a property from any user.
        ///  *  Access to Jira, to get a property from the calling user's record.
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.EntityProperty> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getUserProperty")
        }

        public struct GetParameters {
            /// Example: "5b10ac8d82e05b22cc7d4ef5"
            public var accountID: String?
            public var userKey: String?
            public var username: String?

            public init(accountID: String? = nil, userKey: String? = nil, username: String? = nil) {
                self.accountID = accountID
                self.userKey = userKey
                self.username = username
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(accountID, forKey: "accountId")
                encoder.encode(userKey, forKey: "userKey")
                encoder.encode(username, forKey: "username")
                return encoder.items
            }
        }

        /// Set user property
        ///
        /// Sets the value of a user's property. Use this resource to store custom data against a user.
        /// 
        /// Note: This operation does not access the [user properties](https://confluence.atlassian.com/x/8YxjL) created and maintained in Jira.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to set a property on any user.
        ///  *  Access to Jira, to set a property on the calling user's record.
        public func put(parameters: PutParameters? = nil, _ body: AnyJSON) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", query: parameters?.asQuery, body: body, id: "setUserProperty")
        }

        public struct PutParameters {
            /// Example: "5b10ac8d82e05b22cc7d4ef5"
            public var accountID: String?
            public var userKey: String?
            public var username: String?

            public init(accountID: String? = nil, userKey: String? = nil, username: String? = nil) {
                self.accountID = accountID
                self.userKey = userKey
                self.username = username
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(accountID, forKey: "accountId")
                encoder.encode(userKey, forKey: "userKey")
                encoder.encode(username, forKey: "username")
                return encoder.items
            }
        }

        /// Delete user property
        ///
        /// Deletes a property from a user.
        /// 
        /// Note: This operation does not access the [user properties](https://confluence.atlassian.com/x/8YxjL) created and maintained in Jira.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to delete a property from any user.
        ///  *  Access to Jira, to delete a property from the calling user's record.
        public func delete(parameters: DeleteParameters? = nil) -> Request<Void> {
            Request(path: path, method: "DELETE", query: parameters?.asQuery, id: "deleteUserProperty")
        }

        public struct DeleteParameters {
            /// Example: "5b10ac8d82e05b22cc7d4ef5"
            public var accountID: String?
            public var userKey: String?
            public var username: String?

            public init(accountID: String? = nil, userKey: String? = nil, username: String? = nil) {
                self.accountID = accountID
                self.userKey = userKey
                self.username = username
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(accountID, forKey: "accountId")
                encoder.encode(userKey, forKey: "userKey")
                encoder.encode(username, forKey: "username")
                return encoder.items
            }
        }
    }
}
