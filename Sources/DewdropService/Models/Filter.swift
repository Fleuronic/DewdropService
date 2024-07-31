// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import protocol Catena.Valued
import protocol Identity.Identifiable

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
	public let value: Filter
}

// MARK: -
public extension Filter.Identified {
	init(
		id: ID,
		count: Int
	) {
		self.id = id
		
		value = .init(count: count)
	}
}

// MARK: -
extension Filter.Identified: Valued {
	// MARK: Valued
	public typealias Value = Filter
}
