// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Highlight
public import struct Foundation.Date

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
