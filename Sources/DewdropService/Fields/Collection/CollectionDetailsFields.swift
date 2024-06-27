// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.User
import struct Catena.IDFields

@dynamicMemberLookup
public struct CollectionDetailsFields {
	public let id: Collection.ID
	public let owner: IDFields<User.Identified>
	public let parent: IDFields<Collection.Identified>?

	private let collection: Collection

	public init(
		id: Collection.ID,
		owner: IDFields<User.Identified>,
		parent: IDFields<Collection.Identified>?,
		collection: Collection
	) {
		self.id = id
		self.owner = owner
		self.parent = parent
		self.collection = collection
	}
}

// MARK -
public extension CollectionDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection, T>) -> T {
		collection[keyPath: keyPath]
	}
}

extension CollectionDetailsFields: CollectionFields {
	public typealias Model = Collection
}
