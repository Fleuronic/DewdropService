// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Foundation.URL
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Identity.Identifiable

public extension User {
	typealias ID = Identified.ID
	typealias IDFields = Catena.IDFields<Identified>
	typealias Identified = IdentifiedUser
}

// MARK: -
extension User: Catena.Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedUser: Sendable {
	public let id: ID
	public let value: User
}

// MARK: -
public extension User.Identified {
	init(
		id: ID,
		fullName: String,
		email: String?,
		avatarURL: URL?,
		hasProSubscription: Bool?
	) {
		self.init(
			id: id,
			value: .init(
				fullName: fullName,
				email: email,
				avatarURL: avatarURL,
				hasProSubscription: hasProSubscription
			)
		)
	}
}

// MARK: -
extension User.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}

// MARK: -
extension User.Identified: Valued {
	// MARK: Valued
	public typealias Value = User
}
