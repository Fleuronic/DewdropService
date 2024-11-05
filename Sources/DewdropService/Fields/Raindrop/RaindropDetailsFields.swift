// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Raindrop
import struct Dewdrop.User
import struct Dewdrop.Collection
import struct Catena.IDFields
import protocol Catena.Valued

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct RaindropDetailsFields: RaindropFields {
	public let id: Raindrop.ID
	public let owner: IDFields<User.Identified>
	public let creator: UserNameFields
	public let collection: IDFields<Collection.Identified>
	public let tags: [TagNameFields]
	public let highlights: [HighlightInRaindropDetailsFields]?

	private let raindrop: Raindrop
}

// MARK: -
public extension RaindropDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop, T>) -> T {
		raindrop[keyPath: keyPath]
	}
}
