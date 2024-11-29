// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Dewdrop.Highlight
import struct Catena.IDFields
import struct Foundation.URL
import struct Foundation.Date
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
		excerpt: String?,
		domain: String,
		coverURL: URL?,
		note: String?,
		isFavorite: Bool,
		isBroken: Bool,
		creationDate: Date,
		updateDate: Date,
		collection: Collection.Identified
	) {
		self.init(
			id: id,
			value: .init(
				url: url,
				title: title,
				itemType: itemType,
				excerpt: excerpt,
				domain: domain,
				coverURL: coverURL,
				media: [], // TODO
				note: note,
				cache: nil, // TODO
				isFavorite: isFavorite,
				isBroken: isBroken,
				creationDate: creationDate,
				updateDate: updateDate
			),
			collection: collection
		)
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
