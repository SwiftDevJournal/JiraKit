// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.WithProjectIDOrKey {
    public var components: Components {
        Components(path: path + "/components")
    }

    public struct Components {
        /// Path: `/rest/api/3/project/{projectIdOrKey}/components`
        public let path: String

        /// Get project components
        ///
        /// Returns all components in a project. See the [Get project components paginated](#api-rest-api-3-project-projectIdOrKey-component-get) resource if you want to get a full list of components with pagination.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.
        public var get: Request<[JiraKit.ProjectComponent]> {
            Request(path: path, method: "GET", id: "getProjectComponents")
        }
    }
}
