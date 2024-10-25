// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Collection

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct CoverFields {
	private let cover: Collection.Cover
}

// MARK -
public extension CoverFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection.Cover, T>) -> T {
		cover[keyPath: keyPath]
	}
}
