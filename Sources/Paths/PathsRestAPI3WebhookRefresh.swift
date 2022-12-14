// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Webhook {
    public var refresh: Refresh {
        Refresh(path: path + "/refresh")
    }

    public struct Refresh {
        /// Path: `/rest/api/3/webhook/refresh`
        public let path: String

        /// Extend webhook life
        ///
        /// Extends the life of webhook. Webhooks registered through the REST API expire after 30 days. Call this operation to keep them alive.
        /// 
        /// Unrecognized webhook IDs (those that are not found or belong to other apps) are ignored.
        /// 
        /// **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/#connect-apps) and [OAuth 2.0](https://developer.atlassian.com/cloud/jira/platform/oauth-2-3lo-apps) apps can use this operation.
        public func put(_ body: JiraKit.ContainerForWebhookIDs) -> Request<JiraKit.WebhooksExpirationDate> {
            Request(path: path, method: "PUT", body: body, id: "refreshWebhooks")
        }
    }
}
