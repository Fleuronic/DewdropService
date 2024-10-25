// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Collection
public import struct Dewdrop.User
public import struct Catena.IDFields

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct CollectionDetailsFields: CollectionFields {
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
