// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection

@dynamicMemberLookup
public struct CoverFields {
	private let cover: Collection.Cover

	public init(cover: Collection.Cover) {
		self.cover = cover
	}
}

// MARK -
public extension CoverFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection.Cover, T>) -> T {
		cover[keyPath: keyPath]
	}
}
