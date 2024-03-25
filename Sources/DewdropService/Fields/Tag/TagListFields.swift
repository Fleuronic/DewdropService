// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag

@dynamicMemberLookup
public struct TagListFields {
	public let id: Tag.ID

	private let tag: Tag

	public init(
		id: Tag.ID,
		tag: Tag
	) {
		self.id = id
		self.tag = tag
	}
}

// MARK -
public extension TagListFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Tag, T>) -> T {
		tag[keyPath: keyPath]
	}
}
