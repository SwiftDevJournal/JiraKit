// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.AtlassianConnect.__1.App.Module {
    public var dynamic: Dynamic {
        Dynamic(path: path + "/dynamic")
    }

    public struct Dynamic {
        /// Path: `/rest/atlassian-connect/1/app/module/dynamic`
        public let path: String

        /// Get modules
        ///
        /// Returns all modules registered dynamically by the calling app.
        /// 
        /// **[Permissions](#permissions) required:** Only Connect apps can make this request.
        public var get: Request<JiraKit.ConnectModules> {
            Request(path: path, method: "GET", id: "DynamicModulesResource.getModules_get")
        }

        /// Register modules
        ///
        /// Registers a list of modules.
        /// 
        /// **[Permissions](#permissions) required:** Only Connect apps can make this request.
        public func post(_ body: JiraKit.ConnectModules) -> Request<Void> {
            Request(path: path, method: "POST", body: body, id: "DynamicModulesResource.registerModules_post")
        }

        /// Remove modules
        ///
        /// Remove all or a list of modules registered by the calling app.
        /// 
        /// **[Permissions](#permissions) required:** Only Connect apps can make this request.
        public func delete(moduleKey: [String]? = nil) -> Request<Void> {
            Request(path: path, method: "DELETE", query: makeDeleteQuery(moduleKey), id: "DynamicModulesResource.removeModules_delete")
        }

        private func makeDeleteQuery(_ moduleKey: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(moduleKey, forKey: "moduleKey")
            return encoder.items
        }
    }
}
