// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Foundation.URL
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catena.Representable
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
public struct IdentifiedUser {
	public let id: ID
	public let value: Value
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
		self.id = id
		
		value = .init(
			fullName: fullName,
			email: email,
			avatarURL: avatarURL,
			hasProSubscription: hasProSubscription
		)
	}

	init(from representable: some Representable<User, Self>) {
		self.init(
			id: representable.id,
			value: representable.value
		)
	}
}

// MARK: -
extension User.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}

extension User.Identified: Representable {
	// MARK: Valued
	public typealias Value = User

	// MARK: Representable
	public typealias IdentifiedValue = Self
}
