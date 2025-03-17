//
// FormatTest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@available(*, deprecated, renamed: "PetstoreClientAPI.FormatTest")
public typealias FormatTest = PetstoreClientAPI.FormatTest

extension PetstoreClientAPI {

public final class FormatTest: @unchecked Sendable, Codable, QueryStringEncodable, Hashable {

    public static let integerRule = NumericRule<Int>(minimum: 10, exclusiveMinimum: false, maximum: 100, exclusiveMaximum: false, multipleOf: nil)
    public static let int32Rule = NumericRule<Int>(minimum: 20, exclusiveMinimum: false, maximum: 200, exclusiveMaximum: false, multipleOf: nil)
    public static let numberRule = NumericRule<Double>(minimum: 32.1, exclusiveMinimum: false, maximum: 543.2, exclusiveMaximum: false, multipleOf: nil)
    public static let floatRule = NumericRule<Float>(minimum: 54.3, exclusiveMinimum: false, maximum: 987.6, exclusiveMaximum: false, multipleOf: nil)
    public static let doubleRule = NumericRule<Double>(minimum: 67.8, exclusiveMinimum: false, maximum: 123.4, exclusiveMaximum: false, multipleOf: nil)
    public static let stringRule = StringRule(minLength: nil, maxLength: nil, pattern: "/[a-z]/i")
    public static let passwordRule = StringRule(minLength: 10, maxLength: 64, pattern: nil)
    public private(set) var integer: Int?
    public private(set) var int32: Int?
    public private(set) var int64: Int64?
    public private(set) var number: Double
    public private(set) var float: Float?
    public private(set) var double: Double?
    public private(set) var string: String?
    public private(set) var byte: Data
    public private(set) var binary: Data?
    public private(set) var date: Date
    public private(set) var dateTime: Date?
    public private(set) var uuid: UUID?
    public private(set) var password: String

    public init(integer: Int? = nil, int32: Int? = nil, int64: Int64? = nil, number: Double, float: Float? = nil, double: Double? = nil, string: String? = nil, byte: Data, binary: Data? = nil, date: Date, dateTime: Date? = nil, uuid: UUID? = nil, password: String) {
        self.integer = integer
        self.int32 = int32
        self.int64 = int64
        self.number = number
        self.float = float
        self.double = double
        self.string = string
        self.byte = byte
        self.binary = binary
        self.date = date
        self.dateTime = dateTime
        self.uuid = uuid
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case integer
        case int32
        case int64
        case number
        case float
        case double
        case string
        case byte
        case binary
        case date
        case dateTime
        case uuid
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(integer, forKey: .integer)
        try container.encodeIfPresent(int32, forKey: .int32)
        try container.encodeIfPresent(int64, forKey: .int64)
        try container.encode(number, forKey: .number)
        try container.encodeIfPresent(float, forKey: .float)
        try container.encodeIfPresent(double, forKey: .double)
        try container.encodeIfPresent(string, forKey: .string)
        try container.encode(byte, forKey: .byte)
        try container.encodeIfPresent(binary, forKey: .binary)
        try container.encode(date, forKey: .date)
        try container.encodeIfPresent(dateTime, forKey: .dateTime)
        try container.encodeIfPresent(uuid, forKey: .uuid)
        try container.encode(password, forKey: .password)
    }

    public static func == (lhs: FormatTest, rhs: FormatTest) -> Bool {
        lhs.integer == rhs.integer &&
        lhs.int32 == rhs.int32 &&
        lhs.int64 == rhs.int64 &&
        lhs.number == rhs.number &&
        lhs.float == rhs.float &&
        lhs.double == rhs.double &&
        lhs.string == rhs.string &&
        lhs.byte == rhs.byte &&
        lhs.binary == rhs.binary &&
        lhs.date == rhs.date &&
        lhs.dateTime == rhs.dateTime &&
        lhs.uuid == rhs.uuid &&
        lhs.password == rhs.password
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(integer?.hashValue)
        hasher.combine(int32?.hashValue)
        hasher.combine(int64?.hashValue)
        hasher.combine(number.hashValue)
        hasher.combine(float?.hashValue)
        hasher.combine(double?.hashValue)
        hasher.combine(string?.hashValue)
        hasher.combine(byte.hashValue)
        hasher.combine(binary?.hashValue)
        hasher.combine(date.hashValue)
        hasher.combine(dateTime?.hashValue)
        hasher.combine(uuid?.hashValue)
        hasher.combine(password.hashValue)
        
    }
}

}
