// Copyright © Fleuronic LLC. All rights reserved.

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
public struct IdentifiedRaindrop {
	public let id: ID
	public let value: Value
	public let collection: Collection.Identified
}

// MARK: -
public extension Raindrop.Identified {
	init(
		id: ID,
		title: String,
		url: URL,
		collection: Collection.Identified
	) {
		self.id = id
		self.collection = collection

		// TODO
		fatalError()
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
