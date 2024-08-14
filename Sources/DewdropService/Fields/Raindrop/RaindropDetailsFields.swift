// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Raindrop
import struct Dewdrop.User
import struct Dewdrop.Collection
import struct Catena.IDFields
import protocol Catena.Valued

@Init @dynamicMemberLookup
public struct RaindropDetailsFields: RaindropFields {
	public let id: Raindrop.ID
	public let owner: IDFields<User.Identified>
	public let creator: UserNameFields
	public let collection: IDFields<Collection.Identified>
	public let tags: [TagNameFields]
	public let highlights: [HighlightInRaindropFields]?

	private let raindrop: Raindrop
}

// MARK: -
public extension RaindropDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop, T>) -> T {
		raindrop[keyPath: keyPath]
	}
}
