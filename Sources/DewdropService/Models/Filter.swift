// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import struct Dewdrop.Raindrop
import struct Identity.Identifier
import protocol Catena.Valued
import protocol Catena.Representable
import protocol Identity.Identifiable

public extension Filter {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedFilter

	static func query(for id: ID) -> String {
		switch Filter.ID.Name(id: id) {
		case .favorited: Filter.ID.Name.favorited.rawValue
		case let name?: "\(name.rawValue):true"
		case nil: "type:\(id.rawValue)"
		}
	}

	static func filterName(forQuery query: String) -> Filter.ID.Name? {
		guard query.hasSuffix(":true") else { return .init(rawValue: query) }
		
		let name = query.components(separatedBy: ":").first!
		return .init(rawValue: name)
	}

	static func itemType(forQuery query: String) -> Raindrop.ItemType? {
		guard query.hasPrefix("type:") else { return nil }
		
		let typeName = query.components(separatedBy: ":").last!
		return .init(rawValue: typeName)
	}
}

// MARK: -
extension Filter: Catena.Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedFilter: Identifiable, Sendable {
	public let id: Self.ID
	public let sortIndex: Int
	public let value: Filter
}

// MARK: -
public extension Filter.Identified {
	init(
		id: ID,
		count: Int,
		sortIndex: Int
	) {
		self.init(
			id: id,
			sortIndex: sortIndex,
			value: .init(count: count)
		)
	}
}

// MARK: -
extension Filter.Identified: Valued {
	// MARK: Valued
	public typealias Value = Filter
}

// MARK: -
public extension Identifier<Filter.Identified> {
	enum Name: String, Sendable {
		case favorited = "❤️"
		case highlighted = "highlights"
		case duplicate = "duplicate"
		case untagged = "notag"
		case broken
	}

	init(_ name: Name) {
		self.init(rawValue: name.rawValue)
	}
}

// MARK: -
public extension Identifier<Filter.Identified>.Name {
	init?(id: Filter.ID) {
		self.init(rawValue: id.rawValue)
	}
}
