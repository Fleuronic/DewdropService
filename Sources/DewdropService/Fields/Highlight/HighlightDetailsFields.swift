// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop

@dynamicMemberLookup
public struct HighlightDetailsFields: HighlightFields {
	public let id: Highlight.ID
	public let raindropID: Raindrop.ID

	private let highlight: Highlight

	public init(
		id: Highlight.ID,
		raindropID: Raindrop.ID,
		highlight: Highlight
	) {
		self.id = id
		self.raindropID = raindropID
		self.highlight = highlight
	}
}

// MARK -
public extension HighlightDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Highlight, T>) -> T {
		highlight[keyPath: keyPath]
	}
}
