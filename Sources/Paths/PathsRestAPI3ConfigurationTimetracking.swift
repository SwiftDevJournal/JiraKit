// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Configuration {
    public var timetracking: Timetracking {
        Timetracking(path: path + "/timetracking")
    }

    public struct Timetracking {
        /// Path: `/rest/api/3/configuration/timetracking`
        public let path: String

        /// Get selected time tracking provider
        ///
        /// Returns the time tracking provider that is currently selected. Note that if time tracking is disabled, then a successful but empty response is returned.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var get: Request<JiraKit.TimeTrackingProvider> {
            Request(path: path, method: "GET", id: "getSelectedTimeTrackingImplementation")
        }

        /// Select time tracking provider
        ///
        /// Selects a time tracking provider.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.TimeTrackingProvider) -> Request<AnyJSON> {
            Request(path: path, method: "PUT", body: body, id: "selectTimeTrackingImplementation")
        }
    }
}
