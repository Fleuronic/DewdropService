// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Raindrop
public import struct Dewdrop.User
public import struct Dewdrop.Collection
public import struct Catena.IDFields
public import protocol Catena.Valued

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
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
