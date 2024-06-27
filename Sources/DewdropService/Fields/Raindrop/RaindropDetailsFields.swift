// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.User
import struct Dewdrop.Collection
import struct Catena.IDFields
import protocol Catena.Valued

@dynamicMemberLookup
public struct RaindropDetailsFields {
	public let id: Raindrop.ID
	public let owner: IDFields<User.Identified>
	public let creator: UserNameFields
	public let collection: IDFields<Collection.Identified>
	public let tags: [TagNameFields]
	public let highlights: [HighlightInRaindropFields]?

	private let raindrop: Raindrop

	public init(
		id: Raindrop.ID,
		raindrop: Raindrop,
		owner: IDFields<User.Identified>,
		creator: UserNameFields,
		collection: IDFields<Collection.Identified>,
		tags: [TagNameFields],
		highlights: [HighlightInRaindropFields]?
	) {
		self.id = id
		self.raindrop = raindrop
		self.owner = owner
		self.creator = creator
		self.collection = collection
		self.tags = tags
		self.highlights = highlights
	}
}

// MARK: -
extension RaindropDetailsFields: RaindropFields {
	public typealias Model = Raindrop
}

// MARK: -
public extension RaindropDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop, T>) -> T {
		raindrop[keyPath: keyPath]
	}
}
