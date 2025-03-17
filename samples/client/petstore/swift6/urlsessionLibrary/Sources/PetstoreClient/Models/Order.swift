//
// Order.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@available(*, deprecated, renamed: "PetstoreClientAPI.Order")
public typealias Order = PetstoreClientAPI.Order

extension PetstoreClientAPI {

public final class Order: @unchecked Sendable, Codable, QueryStringEncodable, Hashable {

    public enum Status: String, Sendable, Codable, CaseIterable {
        case placed = "placed"
        case approved = "approved"
        case delivered = "delivered"
    }
    public private(set) var id: Int64?
    public private(set) var petId: Int64?
    public private(set) var quantity: Int?
    public private(set) var shipDate: Date?
    /** Order Status */
    public private(set) var status: Status?
    public private(set) var complete: Bool? = false

    public init(id: Int64? = nil, petId: Int64? = nil, quantity: Int? = nil, shipDate: Date? = nil, status: Status? = nil, complete: Bool? = false) {
        self.id = id
        self.petId = petId
        self.quantity = quantity
        self.shipDate = shipDate
        self.status = status
        self.complete = complete
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case petId
        case quantity
        case shipDate
        case status
        case complete
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(petId, forKey: .petId)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(shipDate, forKey: .shipDate)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(complete, forKey: .complete)
    }

    public static func == (lhs: Order, rhs: Order) -> Bool {
        lhs.id == rhs.id &&
        lhs.petId == rhs.petId &&
        lhs.quantity == rhs.quantity &&
        lhs.shipDate == rhs.shipDate &&
        lhs.status == rhs.status &&
        lhs.complete == rhs.complete
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id?.hashValue)
        hasher.combine(petId?.hashValue)
        hasher.combine(quantity?.hashValue)
        hasher.combine(shipDate?.hashValue)
        hasher.combine(status?.hashValue)
        hasher.combine(complete?.hashValue)
        
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension PetstoreClientAPI.Order: Identifiable {}
