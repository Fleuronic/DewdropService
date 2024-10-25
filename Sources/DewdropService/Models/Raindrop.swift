// Copyright © Fleuronic LLC. All rights reserved.

public import enum Dewdrop.ItemType
public import struct Dewdrop.Raindrop
public import struct Dewdrop.Collection
public import struct Dewdrop.Highlight
public import struct Foundation.URL
public import protocol Catena.Valued
public import protocol Identity.Identifiable

public extension Raindrop {
	typealias ID = Identified.ID
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
	public let highlights: [Highlight.Identified]
}

// MARK: -
public extension Raindrop.Identified {
	init(
		id: ID,
		url: URL,
		title: String,
		itemType: ItemType,
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
