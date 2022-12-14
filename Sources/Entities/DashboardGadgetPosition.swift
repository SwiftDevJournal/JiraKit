// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a gadget position.
public struct DashboardGadgetPosition: Codable {
    public var theRowPositionOfTheGadget: Int32
    public var theColumnPositionOfTheGadget: Int32

    public init(theRowPositionOfTheGadget: Int32, theColumnPositionOfTheGadget: Int32) {
        self.theRowPositionOfTheGadget = theRowPositionOfTheGadget
        self.theColumnPositionOfTheGadget = theColumnPositionOfTheGadget
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.theRowPositionOfTheGadget = try values.decode(Int32.self, forKey: "The row position of the gadget.")
        self.theColumnPositionOfTheGadget = try values.decode(Int32.self, forKey: "The column position of the gadget.")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(theRowPositionOfTheGadget, forKey: "The row position of the gadget.")
        try values.encode(theColumnPositionOfTheGadget, forKey: "The column position of the gadget.")
    }
}
