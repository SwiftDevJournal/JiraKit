// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.`Type`.WithProjectTypeKey {
    public var accessible: Accessible {
        Accessible(path: path + "/accessible")
    }

    public struct Accessible {
        /// Path: `/rest/api/3/project/type/{projectTypeKey}/accessible`
        public let path: String

        /// Get accessible project type by key
        ///
        /// Returns a [project type](https://confluence.atlassian.com/x/Var1Nw) if it is accessible to the user.
        /// 
        /// **[Permissions](#permissions) required:** Permission to access Jira.
        public var get: Request<JiraKit.ProjectType> {
            Request(method: "GET", url: path, id: "getAccessibleProjectTypeByKey")
        }
    }
}
