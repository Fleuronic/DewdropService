// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.User
public import struct Dewdrop.Collection
public import struct Catena.IDFields

@dynamicMemberLookup
public struct ConfigFields: Sendable /* TODO */ {
	public let lastViewedCollection: IDFields<Collection.Identified>

	private let config: User.Config

	public init(
		config: User.Config,
		lastViewedCollectionID: Collection.ID
	) {
		self.config = config
		lastViewedCollection = .init(id: lastViewedCollectionID)
	}
}

// MARK -
public extension ConfigFields {
	subscript<T>(dynamicMember keyPath: KeyPath<User.Config, T>) -> T {
		config[keyPath: keyPath]
	}
}
