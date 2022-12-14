// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var group: Group {
        Group(path: path + "/group")
    }

    public struct Group {
        /// Path: `/rest/api/3/group`
        public let path: String

        /// Get group
        ///
        /// This operation is deprecated, use [`group/member`](#api-rest-api-3-group-member-get).
        /// 
        /// Returns all users in a group.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        @available(*, deprecated, message: "Deprecated")
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.Group> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "getGroup")
        }

        public struct GetParameters {
            public var groupname: String?
            public var groupID: String?
            public var expand: String?

            public init(groupname: String? = nil, groupID: String? = nil, expand: String? = nil) {
                self.groupname = groupname
                self.groupID = groupID
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(groupname, forKey: "groupname")
                encoder.encode(groupID, forKey: "groupId")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }

        /// Create group
        ///
        /// Creates a group.
        /// 
        /// **[Permissions](#permissions) required:** Site administration (that is, member of the *site-admin* [group](https://confluence.atlassian.com/x/24xjL)).
        public func post(_ body: JiraKit.AddGroupBean) -> Request<JiraKit.Group> {
            Request(path: path, method: "POST", body: body, id: "createGroup")
        }

        /// Remove group
        ///
        /// Deletes a group.
        /// 
        /// **[Permissions](#permissions) required:** Site administration (that is, member of the *site-admin* strategic [group](https://confluence.atlassian.com/x/24xjL)).
        public func delete(parameters: DeleteParameters? = nil) -> Request<Void> {
            Request(path: path, method: "DELETE", query: parameters?.asQuery, id: "removeGroup")
        }

        public struct DeleteParameters {
            public var groupname: String?
            public var groupID: String?
            public var swapGroup: String?
            public var swapGroupID: String?

            public init(groupname: String? = nil, groupID: String? = nil, swapGroup: String? = nil, swapGroupID: String? = nil) {
                self.groupname = groupname
                self.groupID = groupID
                self.swapGroup = swapGroup
                self.swapGroupID = swapGroupID
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(groupname, forKey: "groupname")
                encoder.encode(groupID, forKey: "groupId")
                encoder.encode(swapGroup, forKey: "swapGroup")
                encoder.encode(swapGroupID, forKey: "swapGroupId")
                return encoder.items
            }
        }
    }
}
