// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Configuration.Timetracking {
    public var options: Options {
        Options(path: path + "/options")
    }

    public struct Options {
        /// Path: `/rest/api/3/configuration/timetracking/options`
        public let path: String

        /// Get time tracking settings
        ///
        /// Returns the time tracking settings. This includes settings such as the time format, default time unit, and others. For more information, see [Configuring time tracking](https://confluence.atlassian.com/x/qoXKM).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var get: Request<JiraKit.TimeTrackingConfiguration> {
            Request(path: path, method: "GET", id: "getSharedTimeTrackingConfiguration")
        }

        /// Set time tracking settings
        ///
        /// Sets the time tracking settings.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.TimeTrackingConfiguration) -> Request<JiraKit.TimeTrackingConfiguration> {
            Request(path: path, method: "PUT", body: body, id: "setSharedTimeTrackingConfiguration")
        }
    }
}
