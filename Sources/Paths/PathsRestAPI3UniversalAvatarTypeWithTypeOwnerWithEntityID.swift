// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.API.__3.UniversalAvatar.`Type`.WithType.Owner {
    public func entityID(_ entityID: String) -> WithEntityID {
        WithEntityID(path: "\(path)/\(entityID)")
    }

    public struct WithEntityID {
        /// Path: `/rest/api/3/universal_avatar/type/{type}/owner/{entityId}`
        public let path: String

        /// Get avatars
        ///
        /// Returns the system and custom avatars for a project or issue type.
        /// 
        /// This operation can be accessed anonymously.
        /// 
        /// **[Permissions](#permissions) required:**
        /// 
        ///  *  for custom project avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project the avatar belongs to.
        ///  *  for custom issue type avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one project the issue type is used in.
        ///  *  for system avatars, none.
        public var get: Request<JiraKit.Avatars> {
            Request(method: "GET", url: path, id: "getAvatars")
        }

        /// Load avatar
        ///
        /// Loads a custom avatar for a project or issue type.
        /// 
        /// Specify the avatar's local file location in the body of the request. Also, include the following headers:
        /// 
        ///  *  `X-Atlassian-Token: no-check` To prevent XSRF protection blocking the request, for more information see [Special Headers](#special-request-headers).
        ///  *  `Content-Type: image/image type` Valid image types are JPEG, GIF, or PNG.
        /// 
        /// For example:  
        /// `curl --request POST `
        /// 
        /// `--user email@example.com:<api_token> `
        /// 
        /// `--header 'X-Atlassian-Token: no-check' `
        /// 
        /// `--header 'Content-Type: image/< image_type>' `
        /// 
        /// `--data-binary "<@/path/to/file/with/your/avatar>" `
        /// 
        /// `--url 'https://your-domain.atlassian.net/rest/api/3/universal_avatar/type/{type}/owner/{entityId}'`
        /// 
        /// The avatar is cropped to a square. If no crop parameters are specified, the square originates at the top left of the image. The length of the square's sides is set to the smaller of the height or width of the image.
        /// 
        /// The cropped image is then used to create avatars of 16x16, 24x24, 32x32, and 48x48 in size.
        /// 
        /// After creating the avatar use:
        /// 
        ///  *  [Update issue type](#api-rest-api-3-issuetype-id-put) to set it as the issue type's displayed avatar.
        ///  *  [Set project avatar](#api-rest-api-3-project-projectIdOrKey-avatar-put) to set it as the project's displayed avatar.
        /// 
        /// **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).
        public func post(parameters: PostParameters, _ body: Data) -> Request<JiraKit.Avatar> {
            Request(method: "POST", url: path, query: parameters.asQuery, body: body, id: "storeAvatar")
        }

        public struct PostParameters {
            public var x: Int?
            public var y: Int?
            public var size: Int

            public init(x: Int? = nil, y: Int? = nil, size: Int) {
                self.x = x
                self.y = y
                self.size = size
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(x, forKey: "x")
                encoder.encode(y, forKey: "y")
                encoder.encode(size, forKey: "size")
                return encoder.items
            }
        }
    }
}