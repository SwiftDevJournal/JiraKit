// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Workflowscheme.WithID {
    public var issuetype: Issuetype {
        Issuetype(path: path + "/issuetype")
    }

    public struct Issuetype {
        /// Path: `/rest/api/3/workflowscheme/{id}/issuetype`
        public let path: String
    }
}
