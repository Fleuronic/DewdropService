// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Foundation.Date

@dynamicMemberLookup
public struct HighlightImportFields: HighlightFields {
	public let creationDate: Date

	private let content: Highlight.Content
	
	public init(
		content: Highlight.Content,
		creationDate: Date
	) {
		self.content = content
		self.creationDate = creationDate
	}
}

// MARK -
public extension HighlightImportFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Highlight.Content, T>) -> T {
		content[keyPath: keyPath]
	}
}
