// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import protocol Identity.Identifiable

@dynamicMemberLookup
public struct IdentifiedTag {
	public let id: ID

	let value: Tag
}

// MARK: -
public extension Tag {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedTag
	
	func identified(with id: ID) -> Identified {
		.init(
			id: id,
			value: self
		)
	}
}

// MARK: -
extension Tag.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = String
}

public extension Tag.Identified {
	subscript<T>(dynamicMember keyPath: KeyPath<Tag, T>) -> T {
		value[keyPath: keyPath]
	}
}
