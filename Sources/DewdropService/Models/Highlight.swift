// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop
import struct Catena.IDFields
import struct Foundation.Date
import protocol Catena.Valued
import protocol Catena.Representable
import protocol Identity.Identifiable

// MARK: -
public extension Highlight {
	typealias ID = Identified.ID
	typealias IDFields = Catena.IDFields<Identified>
	typealias Identified = IdentifiedHighlight
}

// MARK: -
public struct IdentifiedHighlight: Identifiable, Sendable {
	public let id: Self.ID
	public let value: Value
	public let raindrop: Raindrop.Identified
}

// MARK: -
public extension Highlight.Identified {
	init(
		id: ID,
		text: String,
		creationDate: Date,
		updateDate: Date,
		raindrop: Raindrop.Identified
	) {
		self.id = id
		self.raindrop = raindrop

		value = .init(
			content: .init(text: text),
			title: raindrop.value.title,
			creationDate: creationDate,
			updateDate: updateDate
		)
	}
}

// MARK: -
extension Highlight.Identified: Representable {
	// MARK: Valued
	public typealias Value = Highlight
}
