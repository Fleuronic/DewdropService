// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import protocol Catena.Valued
import protocol Identity.Identifiable

// MARK: -
public extension Highlight {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedHighlight
}

@dynamicMemberLookup
public struct IdentifiedHighlight: Valued, Identifiable {
	public typealias Value = Highlight

	public let id: Self.ID

	let value: Value
}

public extension IdentifiedHighlight {
	subscript<T>(dynamicMember keyPath: KeyPath<Highlight, T>) -> T {
		value[keyPath: keyPath]
	}
}
