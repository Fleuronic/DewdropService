// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import struct Identity.Identifier
import protocol Identity.Identifiable
import protocol Catena.Valued

public extension Filter {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedFilter
}

// MARK: -
extension Filter: @retroactive Valued {
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
		sortIndex: Int,
		count: Int
	) {
		self.id = id
		self.sortIndex = sortIndex

		value = .init(count: count)
	}
}

// MARK: -
extension Filter.Identified: Valued {
	// MARK: Valued
	public typealias Value = Filter
}

// MARK: -
public extension Identifier<Filter.Identified> {
	enum Name: String {
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
