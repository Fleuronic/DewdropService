// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop
import struct Catena.IDFields
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
		raindrop: Raindrop.Identified
	) {
		self.id = id
		self.raindrop = raindrop

		fatalError()
//		value = .init(
//			text: text
//		)
	}
}

// MARK: -
extension Highlight.Identified: Representable {
	// MARK: Valued
	public typealias Value = Highlight
}

// MARK: -
public extension [Highlight] {
	var content: [Highlight.Content] { map(\.content) }
}

// MARK: -
public extension [Highlight.Content] {
	var text: [String] { map(\.text) }
}

// MARK: -
public extension [Highlight.Identified] {
	var id: [Highlight.ID] { map(\.id) }
	var value: [Highlight] { map(\.value) }

	init(
		ids: [Highlight.ID],
		texts: [String]
	) {
		let raindrops: [Raindrop.Identified] = []
		self = ids.enumerated().map { index, id in
			.init(
				id: id,
				text: texts[index],
				raindrop: raindrops[index]
			)
		}
	}
}
