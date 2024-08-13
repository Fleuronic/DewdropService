// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.User
import struct Catena.IDFields

@dynamicMemberLookup
public struct CollectionDetailsFields {
	public let id: Collection.ID
	public let parentID: Collection.ID?
	public let owner: IDFields<User.Identified>

	private let collection: Collection

	public init(
		id: Collection.ID,
		parent: IDFields<Collection.Identified>?,
		owner: IDFields<User.Identified>,
		collection: Collection
	) {
		self.id = id
		self.owner = owner
		self.collection = collection

		parentID = parent?.id
	}
}

// MARK -
public extension CollectionDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection, T>) -> T {
		collection[keyPath: keyPath]
	}
}

extension CollectionDetailsFields: CollectionFields {
	
}
