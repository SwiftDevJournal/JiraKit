# JiraKit

Swift data structures for Jira's REST API v3.

I ran the [Create API command line app](https://github.com/CreateAPI/CreateAPI), supplying a JSON file for Jira's REST API. JiraKit is the Swift Package that CreateAPI generated. I created this package so you don't have to install and run CreateAPI yourself.

## Requirements

* Swift 5.5+
* iOS 13+
* macOS 10.15+
* tvOS 13+
* watchOS 6+

## Installation

Add the package from Xcode by selecting the project in the project editor, clicking the Package Dependencies button at the top of the project editor, and clicking the Add button at the bottom of the package list.

A sheet opens Enter the URL for JiraKit, `https://github.com/SwiftDevJournal/JiraKit` in the search field to find JiraKit and add it to your project

## Using JiraKit

Import the JiraKit module in any file where you want to use JiraKit.

```
import JiraKit
```

Click the disclosure triangle next to JiraKit in Xcode's project navigator to access the Sources folder and view the data types and paths for Jira's REST API. There are lots of entities and paths, too many to explain here.

## Limitation

The `NotificationEvent` entity is a class instead of a struct. When I ran the Create API app, I got the following warning:

> WARNING: Entity 'NotificationEvent' cannot be generated as a struct because it has a stored property that recursively contains itself. Explicitly define an override using 'entities.typeOverrides' or ignore the entity/property using 'entities.ignore' to fix this issue.

I don't know how to define an override or ignore the entity so `NotificationEvent` is a class for now.
