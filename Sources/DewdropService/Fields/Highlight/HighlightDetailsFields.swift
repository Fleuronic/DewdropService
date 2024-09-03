// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop

@dynamicMemberLookup
@MemberwiseInit(.public)
public struct HighlightDetailsFields: HighlightFields {
	public let id: Highlight.ID
	public let raindropID: Raindrop.ID

	@Init(.public) private let highlight: Highlight
}

// MARK -
public extension HighlightDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Highlight, T>) -> T {
		highlight[keyPath: keyPath]
	}
}
