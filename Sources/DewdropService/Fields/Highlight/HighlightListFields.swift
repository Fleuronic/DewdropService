// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight

@dynamicMemberLookup
public struct HighlightListFields {
	public let id: Highlight.ID
	
	private let highlight: Highlight

	public init(
		id: Highlight.ID,
		highlight: Highlight
	) {
		self.id = id
		self.highlight = highlight
	}
}

// MARK -
public extension HighlightListFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Highlight, T>) -> T {
		highlight[keyPath: keyPath]
	}
}
