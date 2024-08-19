// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop

@Init @dynamicMemberLookup
public struct HighlightDetailsFields: HighlightFields {
	public let id: Highlight.ID
	public let raindropID: Raindrop.ID

	private let highlight: Highlight
}

// MARK -
public extension HighlightDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Highlight, T>) -> T {
		highlight[keyPath: keyPath]
	}
}
