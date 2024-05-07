// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.User
import struct Dewdrop.Collection

@dynamicMemberLookup
public struct RaindropCreationFields {
	public let id: Raindrop.ID
	public let owner: IDFields<User.Identified>
	public let creator: IDFields<User.Identified>
	public let collection: IDFields<Collection.Identified>
	public let tags: [TagNameFields]

	private let raindrop: Raindrop

	public init(
		id: Raindrop.ID,
		raindrop: Raindrop,
		owner: IDFields<User.Identified>,
		creator: IDFields<User.Identified>,
		collection: IDFields<Collection.Identified>,
		tags: [TagNameFields]
	) {
		self.id = id
		self.raindrop = raindrop
		self.owner = owner
		self.creator = creator
		self.collection = collection
		self.tags = tags
	}
}

// MARK -
public extension RaindropCreationFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop, T>) -> T {
		raindrop[keyPath: keyPath]
	}
}
