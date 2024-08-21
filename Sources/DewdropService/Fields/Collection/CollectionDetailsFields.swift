// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Collection
import struct Dewdrop.User
import struct Catena.IDFields

@dynamicMemberLookup
@Init public struct CollectionDetailsFields: CollectionFields {
	public let id: Collection.ID
	public let parent: IDFields<Collection.Identified>?
	public let owner: IDFields<User.Identified>

	private let collection: Collection
}

// MARK: -
public extension CollectionDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection, T>) -> T {
		collection[keyPath: keyPath]
	}
}
