// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.User
import struct Dewdrop.Collection
import struct Catena.IDFields

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct ConfigFields: Sendable /* TODO */ {
	public let lastViewedCollection: IDFields<Collection.Identified>

	private let config: User.Config
}

// MARK -
public extension ConfigFields {
	subscript<T>(dynamicMember keyPath: KeyPath<User.Config, T>) -> T {
		config[keyPath: keyPath]
	}
}
