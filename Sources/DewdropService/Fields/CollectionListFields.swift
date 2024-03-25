// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection

@dynamicMemberLookup
public struct CollectionListFields {
	public let id: Collection.ID

	private let collection: Collection

	public init(
		id: Collection.ID,
		collection: Collection
	) {
		self.id = id
		self.collection = collection
	}
}

// MARK -
public extension CollectionListFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection, T>) -> T {
		collection[keyPath: keyPath]
	}
}
