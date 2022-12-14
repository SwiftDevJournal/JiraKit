// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about the Jira instance.
public struct ServerInformation: Codable {
    /// The base URL of the Jira instance.
    public var baseURL: String?
    /// The version of Jira.
    public var version: String?
    /// The major, minor, and revision version numbers of the Jira version.
    public var versionNumbers: [Int32]?
    /// The type of server deployment. This is always returned as *Cloud*.
    public var deploymentType: String?
    /// The build number of the Jira version.
    public var buildNumber: Int32?
    /// The timestamp when the Jira version was built.
    public var buildDate: Date?
    /// The time in Jira when this request was responded to.
    public var serverTime: Date?
    /// The unique identifier of the Jira version.
    public var scmInfo: String?
    /// The name of the Jira instance.
    public var serverTitle: String?
    /// Jira instance health check results. Deprecated and no longer returned.
    public var healthChecks: [HealthCheckResult]?

    public init(baseURL: String? = nil, version: String? = nil, versionNumbers: [Int32]? = nil, deploymentType: String? = nil, buildNumber: Int32? = nil, buildDate: Date? = nil, serverTime: Date? = nil, scmInfo: String? = nil, serverTitle: String? = nil, healthChecks: [HealthCheckResult]? = nil) {
        self.baseURL = baseURL
        self.version = version
        self.versionNumbers = versionNumbers
        self.deploymentType = deploymentType
        self.buildNumber = buildNumber
        self.buildDate = buildDate
        self.serverTime = serverTime
        self.scmInfo = scmInfo
        self.serverTitle = serverTitle
        self.healthChecks = healthChecks
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.baseURL = try values.decodeIfPresent(String.self, forKey: "baseUrl")
        self.version = try values.decodeIfPresent(String.self, forKey: "version")
        self.versionNumbers = try values.decodeIfPresent([Int32].self, forKey: "versionNumbers")
        self.deploymentType = try values.decodeIfPresent(String.self, forKey: "deploymentType")
        self.buildNumber = try values.decodeIfPresent(Int32.self, forKey: "buildNumber")
        self.buildDate = try values.decodeIfPresent(Date.self, forKey: "buildDate")
        self.serverTime = try values.decodeIfPresent(Date.self, forKey: "serverTime")
        self.scmInfo = try values.decodeIfPresent(String.self, forKey: "scmInfo")
        self.serverTitle = try values.decodeIfPresent(String.self, forKey: "serverTitle")
        self.healthChecks = try values.decodeIfPresent([HealthCheckResult].self, forKey: "healthChecks")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(baseURL, forKey: "baseUrl")
        try values.encodeIfPresent(version, forKey: "version")
        try values.encodeIfPresent(versionNumbers, forKey: "versionNumbers")
        try values.encodeIfPresent(deploymentType, forKey: "deploymentType")
        try values.encodeIfPresent(buildNumber, forKey: "buildNumber")
        try values.encodeIfPresent(buildDate, forKey: "buildDate")
        try values.encodeIfPresent(serverTime, forKey: "serverTime")
        try values.encodeIfPresent(scmInfo, forKey: "scmInfo")
        try values.encodeIfPresent(serverTitle, forKey: "serverTitle")
        try values.encodeIfPresent(healthChecks, forKey: "healthChecks")
    }
}
