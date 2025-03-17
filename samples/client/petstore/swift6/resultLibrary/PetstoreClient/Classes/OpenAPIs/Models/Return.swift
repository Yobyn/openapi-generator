//
// Return.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Model for testing reserved words */
internal struct Return: Sendable, Codable, QueryStringEncodable {

    internal private(set) var _return: Int?

    internal init(_return: Int? = nil) {
        self._return = _return
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case _return = "return"
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_return, forKey: ._return)
    }
}

