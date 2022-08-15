// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var permissionscheme: Permissionscheme {
        Permissionscheme(path: path + "/permissionscheme")
    }

    public struct Permissionscheme {
        /// Path: `/rest/api/3/permissionscheme`
        public let path: String

        /// Get all permission schemes
        ///
        /// Returns all permission schemes.
        /// 
        /// ### About permission schemes and grants ###
        /// 
        /// A permission scheme is a collection of permission grants. A permission grant consists of a `holder` and a `permission`.
        /// 
        /// #### Holder object ####
        /// 
        /// The `holder` object contains information about the user or group being granted the permission. For example, the *Administer projects* permission is granted to a group named *Teams in space administrators*. In this case, the type is `"type": "group"`, and the parameter is the group name, `"parameter": "Teams in space administrators"` and the value is group ID, `"value": "ca85fac0-d974-40ca-a615-7af99c48d24f"`. The `holder` object is defined by the following properties:
        /// 
        ///  *  `type` Identifies the user or group (see the list of types below).
        ///  *  `parameter` As a group's name can change, use of `value` is recommended. The value of this property depends on the `type`. For example, if the `type` is a group, then you need to specify the group name.
        ///  *  `value` The value of this property depends on the `type`. If the `type` is a group, then you need to specify the group ID. For other `type` it has the same value as `parameter`
        /// 
        /// The following `types` are available. The expected values for `parameter` and `value` are given in parentheses (some types may not have a `parameter` or `value`):
        /// 
        ///  *  `anyone` Grant for anonymous users.
        ///  *  `applicationRole` Grant for users with access to the specified application (application name, application name). See [Update product access settings](https://confluence.atlassian.com/x/3YxjL) for more information.
        ///  *  `assignee` Grant for the user currently assigned to an issue.
        ///  *  `group` Grant for the specified group (`parameter` : group name, `value` : group ID).
        ///  *  `groupCustomField` Grant for a user in the group selected in the specified custom field (`parameter` : custom field ID, `value` : custom field ID).
        ///  *  `projectLead` Grant for a project lead.
        ///  *  `projectRole` Grant for the specified project role (`parameter` :project role ID, `value` : project role ID).
        ///  *  `reporter` Grant for the user who reported the issue.
        ///  *  `sd.customer.portal.only` Jira Service Desk only. Grants customers permission to access the customer portal but not Jira. See [Customizing Jira Service Desk permissions](https://confluence.atlassian.com/x/24dKLg) for more information.
        ///  *  `user` Grant for the specified user (`parameter` : user ID - historically this was the userkey but that is deprecated and the account ID should be used, `value` : user ID).
        ///  *  `userCustomField` Grant for a user selected in the specified custom field (`parameter` : custom field ID, `value` : custom field ID).
        /// 
        /// #### Built-in permissions ####
        /// 
        /// The [built-in Jira permissions](https://confluence.atlassian.com/x/yodKLg) are listed below. Apps can also define custom permissions. See the [project permission](https://developer.atlassian.com/cloud/jira/platform/modules/project-permission/) and [global permission](https://developer.atlassian.com/cloud/jira/platform/modules/global-permission/) module documentation for more information.
        /// 
        /// **Project permissions**
        /// 
        ///  *  `ADMINISTER_PROJECTS`
        ///  *  `BROWSE_PROJECTS`
        ///  *  `MANAGE_SPRINTS_PERMISSION` (Jira Software only)
        ///  *  `SERVICEDESK_AGENT` (Jira Service Desk only)
        ///  *  `VIEW_DEV_TOOLS` (Jira Software only)
        ///  *  `VIEW_READONLY_WORKFLOW`
        /// 
        /// **Issue permissions**
        /// 
        ///  *  `ASSIGNABLE_USER`
        ///  *  `ASSIGN_ISSUES`
        ///  *  `CLOSE_ISSUES`
        ///  *  `CREATE_ISSUES`
        ///  *  `DELETE_ISSUES`
        ///  *  `EDIT_ISSUES`
        ///  *  `LINK_ISSUES`
        ///  *  `MODIFY_REPORTER`
        ///  *  `MOVE_ISSUES`
        ///  *  `RESOLVE_ISSUES`
        ///  *  `SCHEDULE_ISSUES`
        ///  *  `SET_ISSUE_SECURITY`
        ///  *  `TRANSITION_ISSUES`
        /// 
        /// **Voters and watchers permissions**
        /// 
        ///  *  `MANAGE_WATCHERS`
        ///  *  `VIEW_VOTERS_AND_WATCHERS`
        /// 
        /// **Comments permissions**
        /// 
        ///  *  `ADD_COMMENTS`
        ///  *  `DELETE_ALL_COMMENTS`
        ///  *  `DELETE_OWN_COMMENTS`
        ///  *  `EDIT_ALL_COMMENTS`
        ///  *  `EDIT_OWN_COMMENTS`
        /// 
        /// **Attachments permissions**
        /// 
        ///  *  `CREATE_ATTACHMENTS`
        ///  *  `DELETE_ALL_ATTACHMENTS`
        ///  *  `DELETE_OWN_ATTACHMENTS`
        /// 
        /// **Time tracking permissions**
        /// 
        ///  *  `DELETE_ALL_WORKLOGS`
        ///  *  `DELETE_OWN_WORKLOGS`
        ///  *  `EDIT_ALL_WORKLOGS`
        ///  *  `EDIT_OWN_WORKLOGS`
        ///  *  `WORK_ON_ISSUES`
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public func get(expand: String? = nil) -> Request<JiraKit.PermissionSchemes> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "getAllPermissionSchemes")
        }

        private func makeGetQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }

        /// Create permission scheme
        ///
        /// Creates a new permission scheme. You can create a permission scheme with or without defining a set of permission grants.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func post(expand: String? = nil, _ body: JiraKit.PermissionScheme) -> Request<JiraKit.PermissionScheme> {
            Request(method: "POST", url: path, query: makePostQuery(expand), body: body, id: "createPermissionScheme")
        }

        private func makePostQuery(_ expand: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand")
            return encoder.items
        }
    }
}
