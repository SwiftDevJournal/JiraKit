// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.WithProjectIDOrKey.`Type` {
    public func newProjectTypeKey(_ newProjectTypeKey: String) -> WithNewProjectTypeKey {
        WithNewProjectTypeKey(path: "\(path)/\(newProjectTypeKey)")
    }

    public struct WithNewProjectTypeKey {
        /// Path: `/rest/api/3/project/{projectIdOrKey}/type/{newProjectTypeKey}`
        public let path: String

        /// Update project type
        ///
        /// Deprecated, this feature is no longer supported and no alternatives are available, see [Convert project to a different template or type](https://confluence.atlassian.com/x/yEKeOQ). Updates a [project type](https://confluence.atlassian.com/x/GwiiLQ). The project type can be updated for classic projects only, project type cannot be updated for next-gen projects.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        @available(*, deprecated, message: "Deprecated")
        public var put: Request<JiraKit.Project> {
            Request(method: "PUT", url: path, id: "updateProjectType")
        }
    }
}
