// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.App.Field {
    public var value: Value {
        Value(path: path + "/value")
    }

    public struct Value {
        /// Path: `/rest/api/3/app/field/value`
        public let path: String

        /// Update custom fields
        ///
        /// Updates the value of one or more custom fields on one or more issues. Combinations of custom field and issue should be unique within the request. Custom fields can only be updated by the Forge app that created them.
        /// 
        /// **[Permissions](#permissions) required:** Only the app that created the custom field can update its values with this operation.
        public func post(isGenerateChangelog: Bool? = nil, _ body: JiraKit.MultipleCustomFieldValuesUpdateDetails) -> Request<AnyJSON> {
            Request(method: "POST", url: path, query: makePostQuery(isGenerateChangelog), body: body, id: "updateMultipleCustomFieldValues")
        }

        private func makePostQuery(_ isGenerateChangelog: Bool?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(isGenerateChangelog, forKey: "generateChangelog")
            return encoder.items
        }
    }
}
