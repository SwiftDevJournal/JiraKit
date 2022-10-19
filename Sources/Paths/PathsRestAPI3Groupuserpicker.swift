// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var groupuserpicker: Groupuserpicker {
        Groupuserpicker(path: path + "/groupuserpicker")
    }

    public struct Groupuserpicker {
        /// Path: `/rest/api/3/groupuserpicker`
        public let path: String

        /// Find users and groups
        ///
        /// Returns a list of users and groups matching a string. The string is used:
        /// 
        ///  *  for users, to find a case-insensitive match with display name and e-mail address. Note that if a user has hidden their email address in their user profile, partial matches of the email address will not find the user. An exact match is required.
        ///  *  for groups, to find a case-sensitive match with group name.
        /// 
        /// For example, if the string *tin* is used, records with the display name *Tina*, email address *sarah@tinplatetraining.com*, and the group *accounting* would be returned.
        /// 
        /// Optionally, the search can be refined to:
        /// 
        ///  *  the projects and issue types associated with a custom field, such as a user picker. The search can then be further refined to return only users and groups that have permission to view specific:
        ///     
        ///      *  projects.
        ///      *  issue types.
        ///     
        ///     If multiple projects or issue types are specified, they must be a subset of those enabled for the custom field or no results are returned. For example, if a field is enabled for projects A, B, and C then the search could be limited to projects B and C. However, if the search is limited to projects B and D, nothing is returned.
        ///  *  not return Connect app users and groups.
        ///  *  return groups that have a case-insensitive match with the query.
        /// 
        /// The primary use case for this resource is to populate a picker field suggestion list with users or groups. To this end, the returned object includes an `html` field for each list. This field highlights the matched query term in the item name with the HTML strong tag. Also, each list is wrapped in a response object that contains a header for use in a picker, specifically *Showing X of Y matching groups*.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/yodKLg).
        public func get(parameters: GetParameters) -> Request<JiraKit.FoundUsersAndGroups> {
            Request(path: path, method: "GET", query: parameters.asQuery, id: "findUsersAndGroups")
        }

        public struct GetParameters {
            public var query: String
            public var maxResults: Int32?
            public var isShowAvatar: Bool?
            public var fieldID: String?
            public var projectID: [String]?
            public var issueTypeID: [String]?
            public var avatarSize: AvatarSize?
            public var isCaseInsensitive: Bool?
            public var excludeConnectAddons: Bool?

            public enum AvatarSize: String, Codable, CaseIterable {
                case xsmall
                case xsmall2x = "xsmall@2x"
                case xsmall3x = "xsmall@3x"
                case small
                case small2x = "small@2x"
                case small3x = "small@3x"
                case medium
                case medium2x = "medium@2x"
                case medium3x = "medium@3x"
                case large
                case large2x = "large@2x"
                case large3x = "large@3x"
                case xlarge
                case xlarge2x = "xlarge@2x"
                case xlarge3x = "xlarge@3x"
                case xxlarge
                case xxlarge2x = "xxlarge@2x"
                case xxlarge3x = "xxlarge@3x"
                case xxxlarge
                case xxxlarge2x = "xxxlarge@2x"
                case xxxlarge3x = "xxxlarge@3x"
            }

            public init(query: String, maxResults: Int32? = nil, isShowAvatar: Bool? = nil, fieldID: String? = nil, projectID: [String]? = nil, issueTypeID: [String]? = nil, avatarSize: AvatarSize? = nil, isCaseInsensitive: Bool? = nil, excludeConnectAddons: Bool? = nil) {
                self.query = query
                self.maxResults = maxResults
                self.isShowAvatar = isShowAvatar
                self.fieldID = fieldID
                self.projectID = projectID
                self.issueTypeID = issueTypeID
                self.avatarSize = avatarSize
                self.isCaseInsensitive = isCaseInsensitive
                self.excludeConnectAddons = excludeConnectAddons
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(query, forKey: "query")
                encoder.encode(maxResults, forKey: "maxResults")
                encoder.encode(isShowAvatar, forKey: "showAvatar")
                encoder.encode(fieldID, forKey: "fieldId")
                encoder.encode(projectID, forKey: "projectId")
                encoder.encode(issueTypeID, forKey: "issueTypeId")
                encoder.encode(avatarSize, forKey: "avatarSize")
                encoder.encode(isCaseInsensitive, forKey: "caseInsensitive")
                encoder.encode(excludeConnectAddons, forKey: "excludeConnectAddons")
                return encoder.items
            }
        }
    }
}
