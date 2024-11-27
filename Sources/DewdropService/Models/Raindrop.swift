// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Dewdrop.Highlight
import struct Catena.IDFields
import struct Foundation.URL
import protocol Catena.Valued
import protocol Catena.Representable
import protocol Identity.Identifiable

public extension Raindrop {
	typealias ID = Identified.ID
	typealias IDFields = Catena.IDFields<Identified>
	typealias Identified = IdentifiedRaindrop
}

// MARK: -
extension Raindrop: Catena.Valued {
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedRaindrop: Sendable {
	public let id: ID
	public let value: Value
	public let collection: Collection.Identified
}

// MARK: -
public extension Raindrop.Identified {
	init(
		id: ID,
		url: URL,
		title: String,
		itemType: Raindrop.ItemType,
		isFavorite: Bool,
		isBroken: Bool,
		collection: Collection.Identified
	) {
		self.id = id
		self.collection = collection
		
		fatalError()
		/*value = .init(
		 	url: url,
		 	title: title,
		 	itemType: itemType,
		 	excerpt: String?, // TODO
		 	domain: String, // TODO
		 	coverURL: URL?, // TODO
		 	media: [Media], // TODO
		 	note: String?, // TODO
		 	cache: Cache?, // TODO
		 	isFavorite: isFavorite,
		 	isBroken: isBroken,
		 	creationDate: Date, // TODO
		 	updateDate: Date // TODO
		 )*/
	}
}

// MARK: -
extension Raindrop.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}

// MARK: -
extension Raindrop.Identified: Valued {
	// MARK: Valued
	public typealias Value = Raindrop
}
