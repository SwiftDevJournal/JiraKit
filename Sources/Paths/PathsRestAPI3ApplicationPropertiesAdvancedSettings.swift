// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.ApplicationProperties {
    public var advancedSettings: AdvancedSettings {
        AdvancedSettings(path: path + "/advanced-settings")
    }

    public struct AdvancedSettings {
        /// Path: `/rest/api/3/application-properties/advanced-settings`
        public let path: String

        /// Get advanced settings
        ///
        /// Returns the application properties that are accessible on the *Advanced Settings* page. To navigate to the *Advanced Settings* page in Jira, choose the Jira icon > **Jira settings** > **System**, **General Configuration** and then click **Advanced Settings** (in the upper right).
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public var get: Request<[JiraKit.ApplicationProperty]> {
            Request(path: path, method: "GET", id: "getAdvancedSettings")
        }
    }
}
