// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Foundation.URL
import protocol Catena.Valued
import protocol Identity.Identifiable

public extension Raindrop {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedRaindrop
}

// MARK: -
extension Raindrop: Valued {
	public typealias Value = Self
}

// MARK: -
// TODO
public extension Raindrop.Identified {
	init(
		id: ID,
		title: String,
		url: URL,
		collection: IdentifiedCollection
	) {
		self.id = id
		self.collection = collection

		value = .init(
			url: url,
			title: title,
			itemType: .article,
			excerpt: nil,
			domain: "beep.com",
			coverURL: nil,
			media: [],
			note: nil,
			cache: nil,
			isFavorite: false,
			isBroken: false,
			creationDate: .init(),
			updateDate: .init()
		)
	}
}

@dynamicMemberLookup
public struct IdentifiedRaindrop: Valued, Identifiable {
	public typealias Value = Raindrop
	public typealias RawIdentifier = Int
	
	public let id: ID
	public let collection: IdentifiedCollection

	private let value: Value
}

public extension IdentifiedRaindrop {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop, T>) -> T {
		value[keyPath: keyPath]
	}
}
