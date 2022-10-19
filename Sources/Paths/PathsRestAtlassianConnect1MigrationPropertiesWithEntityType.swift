// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.AtlassianConnect.__1.Migration.Properties {
    public func entityType(_ entityType: String) -> WithEntityType {
        WithEntityType(path: "\(path)/\(entityType)")
    }

    public struct WithEntityType {
        /// Path: `/rest/atlassian-connect/1/migration/properties/{entityType}`
        public let path: String

        /// Bulk update entity properties
        ///
        /// Updates the values of multiple entity properties for an object, up to 50 updates per request. This operation is for use by Connect apps during app migration.
        public func put(_ body: [JiraKit.EntityPropertyDetails]) -> Request<Void> {
            Request(path: path, method: "PUT", body: body, id: "MigrationResource.updateEntityPropertiesValue_put")
        }
    }
}
