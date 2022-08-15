// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.Project.WithProjectIDOrKey.Features {
    public func featureKey(_ featureKey: String) -> WithFeatureKey {
        WithFeatureKey(path: "\(path)/\(featureKey)")
    }

    public struct WithFeatureKey {
        /// Path: `/rest/api/3/project/{projectIdOrKey}/features/{featureKey}`
        public let path: String

        /// Set project feature state
        ///
        /// Sets the state of a project feature.
        public func put(_ body: JiraKit.ProjectFeatureState) -> Request<JiraKit.ContainerForProjectFeatures> {
            Request(method: "PUT", url: path, body: body, id: "toggleFeatureForProject")
        }
    }
}
