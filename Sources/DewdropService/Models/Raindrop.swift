// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Identity.Identifiable

@dynamicMemberLookup
public struct IdentifiedRaindrop {
	public let id: ID

	let value: Raindrop
}

// MARK: -
public extension Raindrop {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedRaindrop
	
	func identified(with id: ID) -> Identified {
		.init(
			id: id,
			value: self
		)
	}
}

// MARK: -
extension Raindrop.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}

public extension Raindrop.Identified {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop, T>) -> T {
		value[keyPath: keyPath]
	}
}
