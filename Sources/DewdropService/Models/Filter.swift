// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import protocol Catena.Valued
import protocol Identity.Identifiable

// MARK: -
public extension Filter {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedFilter
}

@dynamicMemberLookup
public struct IdentifiedFilter: Valued, Identifiable {
	public typealias Value = Filter

	public let id: Self.ID

	let value: Value
}

public extension IdentifiedFilter {
	subscript<T>(dynamicMember keyPath: KeyPath<Filter, T>) -> T {
		value[keyPath: keyPath]
	}
}
