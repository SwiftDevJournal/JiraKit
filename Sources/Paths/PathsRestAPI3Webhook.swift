// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3 {
    public var webhook: Webhook {
        Webhook(path: path + "/webhook")
    }

    public struct Webhook {
        /// Path: `/rest/api/3/webhook`
        public let path: String

        /// Get dynamic webhooks for app
        ///
        /// Returns a [paginated](#pagination) list of the webhooks registered by the calling app.
        /// 
        /// **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/#connect-apps) and [OAuth 2.0](https://developer.atlassian.com/cloud/jira/platform/oauth-2-3lo-apps) apps can use this operation.
        public func get(startAt: Int? = nil, maxResults: Int? = nil) -> Request<JiraKit.PageBeanWebhook> {
            Request(method: "GET", url: path, query: makeGetQuery(startAt, maxResults), id: "getDynamicWebhooksForApp")
        }

        private func makeGetQuery(_ startAt: Int?, _ maxResults: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(startAt, forKey: "startAt")
            encoder.encode(maxResults, forKey: "maxResults")
            return encoder.items
        }

        /// Register dynamic webhooks
        ///
        /// Registers webhooks.
        /// 
        /// **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/#connect-apps) and [OAuth 2.0](https://developer.atlassian.com/cloud/jira/platform/oauth-2-3lo-apps) apps can use this operation.
        public func post(_ body: JiraKit.WebhookRegistrationDetails) -> Request<JiraKit.ContainerForRegisteredWebhooks> {
            Request(method: "POST", url: path, body: body, id: "registerDynamicWebhooks")
        }

        /// Delete webhooks by ID
        ///
        /// Removes webhooks by ID. Only webhooks registered by the calling app are removed. If webhooks created by other apps are specified, they are ignored.
        /// 
        /// **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/#connect-apps) and [OAuth 2.0](https://developer.atlassian.com/cloud/jira/platform/oauth-2-3lo-apps) apps can use this operation.
        public func delete(_ body: JiraKit.ContainerForWebhookIDs) -> Request<Void> {
            Request(method: "DELETE", url: path, body: body, id: "deleteWebhookById")
        }
    }
}