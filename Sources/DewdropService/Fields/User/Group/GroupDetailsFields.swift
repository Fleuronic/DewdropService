// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Group
import struct Dewdrop.Collection
import struct Catena.IDFields

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct GroupDetailsFields: GroupFields {
	public let collections: [IDFields<Collection.Identified>]

	private let group: Group
}

// MARK -
public extension GroupDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Group, T>) -> T {
		group[keyPath: keyPath]
	}
}
