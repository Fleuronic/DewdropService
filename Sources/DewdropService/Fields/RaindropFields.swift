// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop

@dynamicMemberLookup
public struct RaindropFields {
	public let id: Raindrop.ID
	public let collection: RaindropCollectionFields
	
	private let raindrop: Raindrop

	public init(
		id: Raindrop.ID,
		raindrop: Raindrop,
		collection: RaindropCollectionFields
	) {
		self.id = id
		self.raindrop = raindrop
		self.collection = collection
	}
}

// MARK -
public extension RaindropFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop, T>) -> T {
		raindrop[keyPath: keyPath]
	}
}
