// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection

@dynamicMemberLookup
public struct CollectionListFields {
	public let id: Collection.ID
	public let parent: IDFields<Collection.Identified>?

	private let collection: Collection

	public init(
		id: Collection.ID,
		parent: IDFields<Collection.Identified>?,
		collection: Collection
	) {
		self.id = id
		self.parent = parent
		self.collection = collection
	}
}

// MARK -
public extension CollectionListFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection, T>) -> T {
		collection[keyPath: keyPath]
	}
}
