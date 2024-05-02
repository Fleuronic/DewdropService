// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Foundation.Date

@dynamicMemberLookup
public struct HighlightImportFields {
	public let creationDate: Date

	private let content: Highlight.Content
	
	public init(
		creationDate: Date,
		content: Highlight.Content
	) {
		self.creationDate = creationDate
		self.content = content
	}
}

// MARK -
public extension HighlightImportFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Highlight.Content, T>) -> T {
		content[keyPath: keyPath]
	}
}
