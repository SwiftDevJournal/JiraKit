// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Field.WithFieldID.Context {
    public var defaultValue: DefaultValue {
        DefaultValue(path: path + "/defaultValue")
    }

    public struct DefaultValue {
        /// Path: `/rest/api/3/field/{fieldId}/context/defaultValue`
        public let path: String

        /// Get custom field contexts default values
        ///
        /// Returns a [paginated](#pagination) list of defaults for a custom field. The results can be filtered by `contextId`, otherwise all values are returned. If no defaults are set for a context, nothing is returned.  
        /// The returned object depends on type of the custom field:
        /// 
        ///  *  `CustomFieldContextDefaultValueDate` (type `datepicker`) for date fields.
        ///  *  `CustomFieldContextDefaultValueDateTime` (type `datetimepicker`) for date-time fields.
        ///  *  `CustomFieldContextDefaultValueSingleOption` (type `option.single`) for single choice select lists and radio buttons.
        ///  *  `CustomFieldContextDefaultValueMultipleOption` (type `option.multiple`) for multiple choice select lists and checkboxes.
        ///  *  `CustomFieldContextDefaultValueCascadingOption` (type `option.cascading`) for cascading select lists.
        ///  *  `CustomFieldContextSingleUserPickerDefaults` (type `single.user.select`) for single users.
        ///  *  `CustomFieldContextDefaultValueMultiUserPicker` (type `multi.user.select`) for user lists.
        ///  *  `CustomFieldContextDefaultValueSingleGroupPicker` (type `grouppicker.single`) for single choice group pickers.
        ///  *  `CustomFieldContextDefaultValueMultipleGroupPicker` (type `grouppicker.multiple`) for multiple choice group pickers.
        ///  *  `CustomFieldContextDefaultValueURL` (type `url`) for URLs.
        ///  *  `CustomFieldContextDefaultValueProject` (type `project`) for project pickers.
        ///  *  `CustomFieldContextDefaultValueFloat` (type `float`) for floats (floating-point numbers).
        ///  *  `CustomFieldContextDefaultValueLabels` (type `labels`) for labels.
        ///  *  `CustomFieldContextDefaultValueTextField` (type `textfield`) for text fields.
        ///  *  `CustomFieldContextDefaultValueTextArea` (type `textarea`) for text area fields.
        ///  *  `CustomFieldContextDefaultValueReadOnly` (type `readonly`) for read only (text) fields.
        ///  *  `CustomFieldContextDefaultValueMultipleVersion` (type `version.multiple`) for single choice version pickers.
        ///  *  `CustomFieldContextDefaultValueSingleVersion` (type `version.single`) for multiple choice version pickers.
        /// 
        /// Forge custom fields [types](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field-type/#data-types) are also supported, returning:
        /// 
        ///  *  `CustomFieldContextDefaultValueForgeStringFieldBean` (type `forge.string`) for Forge string fields.
        ///  *  `CustomFieldContextDefaultValueForgeMultiStringFieldBean` (type `forge.string.list`) for Forge string collection fields.
        ///  *  `CustomFieldContextDefaultValueForgeObjectFieldBean` (type `forge.object`) for Forge object fields.
        ///  *  `CustomFieldContextDefaultValueForgeDateTimeFieldBean` (type `forge.datetime`) for Forge date-time fields.
        ///  *  `CustomFieldContextDefaultValueForgeGroupFieldBean` (type `forge.group`) for Forge group fields.
        ///  *  `CustomFieldContextDefaultValueForgeMultiGroupFieldBean` (type `forge.group.list`) for Forge group collection fields.
        ///  *  `CustomFieldContextDefaultValueForgeNumberFieldBean` (type `forge.number`) for Forge number fields.
        ///  *  `CustomFieldContextDefaultValueForgeUserFieldBean` (type `forge.user`) for Forge user fields.
        ///  *  `CustomFieldContextDefaultValueForgeMultiUserFieldBean` (type `forge.user.list`) for Forge user collection fields.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func get(parameters: GetParameters? = nil) -> Request<JiraKit.PageBeanCustomFieldContextDefaultValue> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "getDefaultValues")
        }

        public struct GetParameters {
            public var contextID: [Int64]?
            public var startAt: Int64?
            public var maxResults: Int32?

            public init(contextID: [Int64]? = nil, startAt: Int64? = nil, maxResults: Int32? = nil) {
                self.contextID = contextID
                self.startAt = startAt
                self.maxResults = maxResults
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(contextID, forKey: "contextId")
                encoder.encode(startAt, forKey: "startAt")
                encoder.encode(maxResults, forKey: "maxResults")
                return encoder.items
            }
        }

        /// Set custom field contexts default values
        ///
        /// Sets default for contexts of a custom field. Default are defined using these objects:
        /// 
        ///  *  `CustomFieldContextDefaultValueDate` (type `datepicker`) for date fields.
        ///  *  `CustomFieldContextDefaultValueDateTime` (type `datetimepicker`) for date-time fields.
        ///  *  `CustomFieldContextDefaultValueSingleOption` (type `option.single`) for single choice select lists and radio buttons.
        ///  *  `CustomFieldContextDefaultValueMultipleOption` (type `option.multiple`) for multiple choice select lists and checkboxes.
        ///  *  `CustomFieldContextDefaultValueCascadingOption` (type `option.cascading`) for cascading select lists.
        ///  *  `CustomFieldContextSingleUserPickerDefaults` (type `single.user.select`) for single users.
        ///  *  `CustomFieldContextDefaultValueMultiUserPicker` (type `multi.user.select`) for user lists.
        ///  *  `CustomFieldContextDefaultValueSingleGroupPicker` (type `grouppicker.single`) for single choice group pickers.
        ///  *  `CustomFieldContextDefaultValueMultipleGroupPicker` (type `grouppicker.multiple`) for multiple choice group pickers.
        ///  *  `CustomFieldContextDefaultValueURL` (type `url`) for URLs.
        ///  *  `CustomFieldContextDefaultValueProject` (type `project`) for project pickers.
        ///  *  `CustomFieldContextDefaultValueFloat` (type `float`) for floats (floating-point numbers).
        ///  *  `CustomFieldContextDefaultValueLabels` (type `labels`) for labels.
        ///  *  `CustomFieldContextDefaultValueTextField` (type `textfield`) for text fields.
        ///  *  `CustomFieldContextDefaultValueTextArea` (type `textarea`) for text area fields.
        ///  *  `CustomFieldContextDefaultValueReadOnly` (type `readonly`) for read only (text) fields.
        ///  *  `CustomFieldContextDefaultValueMultipleVersion` (type `version.multiple`) for single choice version pickers.
        ///  *  `CustomFieldContextDefaultValueSingleVersion` (type `version.single`) for multiple choice version pickers.
        /// 
        /// Forge custom fields [types](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field-type/#data-types) are also supported, returning:
        /// 
        ///  *  `CustomFieldContextDefaultValueForgeStringFieldBean` (type `forge.string`) for Forge string fields.
        ///  *  `CustomFieldContextDefaultValueForgeMultiStringFieldBean` (type `forge.string.list`) for Forge string collection fields.
        ///  *  `CustomFieldContextDefaultValueForgeObjectFieldBean` (type `forge.object`) for Forge object fields.
        ///  *  `CustomFieldContextDefaultValueForgeDateTimeFieldBean` (type `forge.datetime`) for Forge date-time fields.
        ///  *  `CustomFieldContextDefaultValueForgeGroupFieldBean` (type `forge.group`) for Forge group fields.
        ///  *  `CustomFieldContextDefaultValueForgeMultiGroupFieldBean` (type `forge.group.list`) for Forge group collection fields.
        ///  *  `CustomFieldContextDefaultValueForgeNumberFieldBean` (type `forge.number`) for Forge number fields.
        ///  *  `CustomFieldContextDefaultValueForgeUserFieldBean` (type `forge.user`) for Forge user fields.
        ///  *  `CustomFieldContextDefaultValueForgeMultiUserFieldBean` (type `forge.user.list`) for Forge user collection fields.
        /// 
        /// Only one type of default object can be included in a request. To remove a default for a context, set the default parameter to `null`.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func put(_ body: JiraKit.CustomFieldContextDefaultValueUpdate) -> Request<AnyJSON> {
            Request(method: "PUT", url: path, body: body, id: "setDefaultValues")
        }
    }
}
