//
// Category.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Category: Sendable, Codable, QueryStringEncodable, Hashable {

    public var id: Int64?
    public var name: String? = "default-name"

    public init(id: Int64? = nil, name: String? = "default-name") {
        self.id = id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(name, forKey: .name)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Category: Identifiable {}
