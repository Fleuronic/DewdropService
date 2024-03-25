// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection

@dynamicMemberLookup
public struct RaindropDetailsFields {
	public let id: Raindrop.ID
	public let collection: IDFields<Collection.Identified>
	public let tags: [TagNameFields]
	public let highlights: [HighlightInRaindropFields]

	private let raindrop: Raindrop

	public init(
		id: Raindrop.ID,
		raindrop: Raindrop,
		collection: IDFields<Collection.Identified>,
		tags: [TagNameFields],
		highlights: [HighlightInRaindropFields]
	) {
		self.id = id
		self.raindrop = raindrop
		self.collection = collection
		self.tags = tags
		self.highlights = highlights
	}
}

// MARK -
public extension RaindropDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop, T>) -> T {
		raindrop[keyPath: keyPath]
	}
}
