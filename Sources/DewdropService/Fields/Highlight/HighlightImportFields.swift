// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Highlight
import struct Foundation.Date

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct HighlightImportFields: HighlightFields {
	public let creationDate: Date

	private let content: Highlight.Content
}

// MARK -
public extension HighlightImportFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Highlight.Content, T>) -> T {
		content[keyPath: keyPath]
	}
}
