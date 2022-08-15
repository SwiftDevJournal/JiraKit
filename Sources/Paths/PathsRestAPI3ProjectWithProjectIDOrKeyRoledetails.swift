// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.WithProjectIDOrKey {
    public var roledetails: Roledetails {
        Roledetails(path: path + "/roledetails")
    }

    public struct Roledetails {
        /// Path: `/rest/api/3/project/{projectIdOrKey}/roledetails`
        public let path: String

        /// Get project role details
        ///
        /// Returns all [project roles](https://confluence.atlassian.com/x/3odKLg) and the details for each role. Note that the list of project roles is common to all projects.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.
        public func get(isCurrentMember: Bool? = nil, excludeConnectAddons: Bool? = nil) -> Request<[JiraKit.ProjectRoleDetails]> {
            Request(method: "GET", url: path, query: makeGetQuery(isCurrentMember, excludeConnectAddons), id: "getProjectRoleDetails")
        }

        private func makeGetQuery(_ isCurrentMember: Bool?, _ excludeConnectAddons: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(isCurrentMember, forKey: "currentMember")
            encoder.encode(excludeConnectAddons, forKey: "excludeConnectAddons")
            return encoder.items
        }
    }
}