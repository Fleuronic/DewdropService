// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Raindrop
import struct Dewdrop.User
import struct Dewdrop.Collection
import struct Catena.IDFields

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct RaindropCreationFields {
	public let id: Raindrop.ID
	public let owner: IDFields<User.Identified>
	public let creator: IDFields<User.Identified>
	public let collection: IDFields<Collection.Identified>
	public let tags: [TagNameFields]

	private let raindrop: Raindrop
}

// MARK -
public extension RaindropCreationFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop, T>) -> T {
		raindrop[keyPath: keyPath]
	}
}
