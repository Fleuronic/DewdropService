// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Highlight
public import struct Dewdrop.Raindrop

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
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
