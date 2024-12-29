// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Dewdrop.Media
import struct Dewdrop.Cache
import struct Dewdrop.Highlight
import struct Catena.IDFields
import struct Catena.IDListFields
import struct Foundation.URL
import struct Foundation.Date
import protocol Catena.Valued
import protocol Catena.Representable
import protocol Identity.Identifiable

public extension Raindrop {
	typealias ID = Identified.ID
	typealias IDFields = Catena.IDFields<Identified>
	typealias IDListFields = Catena.IDListFields<Identified>
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
	public let media: [Media.Identified]
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
		cacheStatus: Cache.Status?,
		cacheSize: Int?,
		cacheCreationDate: Date?,
		reminderDate: Date?,
		isFavorite: Bool,
		isBroken: Bool,
		creationDate: Date,
		updateDate: Date,
		collection: Collection.Identified,
		media: [Media.Identified]
	) {
		self.init(
			id: id,
			value: .init(
				url: url,
				domain: domain,
				info: .init(
					title: title,
					itemType: itemType,
					excerpt: excerpt,
					coverURL: coverURL
				),
				note: note,
				media: [],
				cache: cacheStatus.map { status in
					.init(
						status: status,
						size: cacheSize,
						creationDate: cacheCreationDate
					)
				},
				reminder: reminderDate.map(Raindrop.Reminder.init),
				isFavorite: isFavorite,
				isBroken: isBroken,
				creationDate: creationDate,
				updateDate: updateDate
			),
			collection: collection,
			media: media
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
