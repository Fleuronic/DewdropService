// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import protocol Catena.Valued
import protocol Identity.Identifiable

public extension User {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedUser
}

// MARK: -
extension User: @retroactive Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedUser: Sendable {
	public let id: Self.ID
	public let value: Value
}

// MARK: -
extension User.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}

extension User.Identified: Valued {
	// MARK: Valued
	public typealias Value = User
}
