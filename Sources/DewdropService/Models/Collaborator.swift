// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Dewdrop.Collaborator
import struct Foundation.URL
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catena.Representable
import protocol Identity.Identifiable

public extension Collaborator {
	typealias ID = Identified.ID
	typealias IDFields = Catena.IDFields<Identified>
	typealias Identified = IdentifiedCollaborator
}

// MARK: -
extension Collaborator: Catena.Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedCollaborator: Sendable {
	public let userID: User.ID
	public let value: Collaborator
}

// MARK: -
public extension Collaborator.Identified {
	init(
		id: User.ID,
		fullName: String,
		email: String,
		role: Collaborator.Role
	) {
		userID = id
		value = .init(
			fullName: fullName,
			email: email,
			role: role
		)
	}
}
// MARK: -
extension Collaborator.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int

	public var id: ID { .init(rawValue: userID.rawValue) }
}

// MARK: -
extension Collaborator.Identified: Valued {
	// MARK: Valued
	public typealias Value = Collaborator
}
