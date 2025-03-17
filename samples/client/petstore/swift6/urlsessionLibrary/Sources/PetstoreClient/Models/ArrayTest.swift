//
// ArrayTest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@available(*, deprecated, renamed: "PetstoreClientAPI.ArrayTest")
public typealias ArrayTest = PetstoreClientAPI.ArrayTest

extension PetstoreClientAPI {

public final class ArrayTest: @unchecked Sendable, Codable, QueryStringEncodable, Hashable {

    public private(set) var arrayOfString: [String]?
    public private(set) var arrayArrayOfInteger: [[Int64]]?
    public private(set) var arrayArrayOfModel: [[ReadOnlyFirst]]?

    public init(arrayOfString: [String]? = nil, arrayArrayOfInteger: [[Int64]]? = nil, arrayArrayOfModel: [[ReadOnlyFirst]]? = nil) {
        self.arrayOfString = arrayOfString
        self.arrayArrayOfInteger = arrayArrayOfInteger
        self.arrayArrayOfModel = arrayArrayOfModel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case arrayOfString = "array_of_string"
        case arrayArrayOfInteger = "array_array_of_integer"
        case arrayArrayOfModel = "array_array_of_model"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(arrayOfString, forKey: .arrayOfString)
        try container.encodeIfPresent(arrayArrayOfInteger, forKey: .arrayArrayOfInteger)
        try container.encodeIfPresent(arrayArrayOfModel, forKey: .arrayArrayOfModel)
    }

    public static func == (lhs: ArrayTest, rhs: ArrayTest) -> Bool {
        lhs.arrayOfString == rhs.arrayOfString &&
        lhs.arrayArrayOfInteger == rhs.arrayArrayOfInteger &&
        lhs.arrayArrayOfModel == rhs.arrayArrayOfModel
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(arrayOfString?.hashValue)
        hasher.combine(arrayArrayOfInteger?.hashValue)
        hasher.combine(arrayArrayOfModel?.hashValue)
        
    }
}

}
