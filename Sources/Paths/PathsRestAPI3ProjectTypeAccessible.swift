// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.`Type` {
    public var accessible: Accessible {
        Accessible(path: path + "/accessible")
    }

    public struct Accessible {
        /// Path: `/rest/api/3/project/type/accessible`
        public let path: String

        /// Get licensed project types
        ///
        /// Returns all [project types](https://confluence.atlassian.com/x/Var1Nw) with a valid license.
        public var get: Request<[JiraKit.ProjectType]> {
            Request(path: path, method: "GET", id: "getAllAccessibleProjectTypes")
        }
    }
}
