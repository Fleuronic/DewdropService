// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop
import struct Dewdrop.User
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
	public let creator: User.Identified
}

// MARK: -
public extension Highlight.Identified {
	init(
		id: ID,
		text: String,
		color: Highlight.Color,
		note: String?,
		creationDate: Date,
		updateDate: Date,
		raindrop: Raindrop.Identified,
		creator: User.Identified
	) {
		self.init(
			id: id,
			value: .init(
				content: .init(
					text: text,
					color: color,
					note: note
				),
				title: raindrop.value.info.title,
				creationDate: creationDate,
				updateDate: updateDate
			),
			raindrop: raindrop,
			creator: creator
		)
	}
}

// MARK: -
extension Highlight.Identified: Valued {
	// MARK: Valued
	public typealias Value = Highlight
}
