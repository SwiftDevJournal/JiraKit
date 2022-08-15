// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.App.Field.WithFieldIDOrKey {
    public var value: Value {
        Value(path: path + "/value")
    }

    public struct Value {
        /// Path: `/rest/api/3/app/field/{fieldIdOrKey}/value`
        public let path: String

        /// Update custom field value
        ///
        /// Updates the value of a custom field on one or more issues. Custom fields can only be updated by the Forge app that created them.
        /// 
        /// **[Permissions](#permissions) required:** Only the app that created the custom field can update its values with this operation.
        public func put(isGenerateChangelog: Bool? = nil, _ body: JiraKit.CustomFieldValueUpdateDetails) -> Request<AnyJSON> {
            Request(method: "PUT", url: path, query: makePutQuery(isGenerateChangelog), body: body, id: "updateCustomFieldValue")
        }

        private func makePutQuery(_ isGenerateChangelog: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(isGenerateChangelog, forKey: "generateChangelog")
            return encoder.items
        }
    }
}
