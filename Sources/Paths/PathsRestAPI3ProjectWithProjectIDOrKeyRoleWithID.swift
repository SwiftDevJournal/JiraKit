// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.WithProjectIDOrKey.Role {
    public func id(_ id: Int) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/rest/api/3/project/{projectIdOrKey}/role/{id}`
        public let path: String

        /// Get project role for project
        ///
        /// Returns a project role's details and actors associated with the project. The list of actors is sorted by display name.
        /// 
        /// To check whether a user belongs to a role based on their group memberships, use [Get user](#api-rest-api-3-user-get) with the `groups` expand parameter selected. Then check whether the user keys and groups match with the actors returned for the project.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(excludeInactiveUsers: Bool? = nil) -> Request<JiraKit.ProjectRole> {
            Request(path: path, method: "GET", query: makeGetQuery(excludeInactiveUsers), id: "getProjectRole")
        }

        private func makeGetQuery(_ excludeInactiveUsers: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(excludeInactiveUsers, forKey: "excludeInactiveUsers")
            return encoder.items
        }

        /// Add actors to project role
        ///
        /// Adds actors to a project role for the project.
        /// 
        /// To replace all actors for the project, use [Set actors for project role](#api-rest-api-3-project-projectIdOrKey-role-id-put).
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func post(_ body: JiraKit.ActorsMap) -> Request<JiraKit.ProjectRole> {
            Request(path: path, method: "POST", body: body, id: "addActorUsers")
        }

        /// Set actors for project role
        ///
        /// Sets the actors for a project role for a project, replacing all existing actors.
        /// 
        /// To add actors to the project without overwriting the existing list, use [Add actors to project role](#api-rest-api-3-project-projectIdOrKey-role-id-post).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.ProjectRoleActorsUpdateBean) -> Request<JiraKit.ProjectRole> {
            Request(path: path, method: "PUT", body: body, id: "setActors")
        }

        /// Delete actors from project role
        ///
        /// Deletes actors from a project role for the project.
        /// 
        /// To remove default actors from the project role, use [Delete default actors from project role](#api-rest-api-3-role-id-actors-delete).
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func delete(parameters: DeleteParameters? = nil) -> Request<Void> {
            Request(path: path, method: "DELETE", query: parameters?.asQuery, id: "deleteActor")
        }

        public struct DeleteParameters {
            /// Example: "5b10ac8d82e05b22cc7d4ef5"
            public var user: String?
            public var group: String?
            public var groupID: String?

            public init(user: String? = nil, group: String? = nil, groupID: String? = nil) {
                self.user = user
                self.group = group
                self.groupID = groupID
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(user, forKey: "user")
                encoder.encode(group, forKey: "group")
                encoder.encode(groupID, forKey: "groupId")
                return encoder.items
            }
        }
    }
}
