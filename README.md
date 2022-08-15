# JiraKit

Swift data structures for Jira's REST API v3.

I ran the [create-api command line app](https://github.com/CreateAPI/CreateAPI), supplying a JSON file for Jira's REST API. JiraKit is the Swift Package that create-api generated.

## Requirements

* Swift 5.5+
* iOS 13+
* macOS 10.15+
* tvOS 13+
* watchOS 6+

## Limitation

The `NotificationEvent` entity is a class instead of a struct. When I ran the `create-api` app, I got the following warning:

> WARNING: Entity 'NotificationEvent' cannot be generated as a struct because it has a stored property that recursively contains itself. Explicitly define an override using 'entities.typeOverrides' or ignore the entity/property using 'entities.ignore' to fix this issue.

I don't know how to define an override or ignore the entity so `NotificationEvent` is a class for now.
