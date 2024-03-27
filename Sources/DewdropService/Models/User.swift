// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import protocol Identity.Identifiable

public struct IdentifiedUser {
	public let id: ID
	
	let value: User
}

// MARK: -
public extension User {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedUser
}

// MARK: -
extension User.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}
