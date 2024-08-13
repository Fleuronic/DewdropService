// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.ItemType
import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Foundation.URL
import protocol Catena.Valued
import protocol Identity.Identifiable

public extension Raindrop {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedRaindrop
}

// MARK: -
extension Raindrop: @retroactive Valued {
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
		itemType: ItemType,
		isFavorite: Bool,
		isBroken: Bool,
		collection: Collection.Identified
	) {
		self.id = id
		self.collection = collection

		// TODO
		fatalError()
		/*value = .init(
			url: url,
			title: title,
			itemType: itemType,
			excerpt: String?,
			domain: String,
			coverURL: URL?,
			media: [Media],
			note: String?,
			cache: Cache?,
			isFavorite: isFavorite,
			isBroken: isBroken,
			creationDate: Date,
			updateDate: Date
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
