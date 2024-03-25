// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import protocol Identity.Identifiable

@dynamicMemberLookup
public struct IdentifiedCollection {
	public let id: ID

	let value: Collection
}

// MARK: -
public extension Collection {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedCollection
	
	func identified(with id: ID) -> Identified {
		.init(
			id: id,
			value: self
		)
	}
}

// MARK: -
extension Collection.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}

public extension Collection.Identified {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection, T>) -> T {
		value[keyPath: keyPath]
	}
}
