// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import protocol Catena.Valued
import protocol Identity.Identifiable

// MARK: -
public extension User {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedUser
}

@dynamicMemberLookup
public struct IdentifiedUser: Valued, Identifiable {
	public typealias Value = User
	public typealias RawIdentifier = Int
	
	public let id: Self.ID

	let value: Value
}

public extension IdentifiedUser {
	subscript<T>(dynamicMember keyPath: KeyPath<User, T>) -> T {
		value[keyPath: keyPath]
	}
}
