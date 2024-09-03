// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Collection
import struct Dewdrop.User
import struct Catena.IDFields

@dynamicMemberLookup
@MemberwiseInit(.public)
public struct CollectionDetailsFields: CollectionFields {
	public let id: Collection.ID
	public let parent: IDFields<Collection.Identified>?
	public let owner: IDFields<User.Identified>

	@Init(.public) private let collection: Collection
}

// MARK: -
public extension CollectionDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection, T>) -> T {
		collection[keyPath: keyPath]
	}
}
