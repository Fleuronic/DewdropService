// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import protocol Catena.Valued
import protocol Identity.Identifiable

// MARK: -
public extension Tag {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedTag
}

@dynamicMemberLookup
public struct IdentifiedTag: Valued, Identifiable {
	public typealias Value = Tag

	public let id: Self.ID

	let value: Value
}

public extension IdentifiedTag {
	subscript<T>(dynamicMember keyPath: KeyPath<Tag, T>) -> T {
		value[keyPath: keyPath]
	}
}
