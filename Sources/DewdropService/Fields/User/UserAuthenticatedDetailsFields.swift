// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.User
import struct Dewdrop.Account

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct UserAuthenticatedDetailsFields: UserFields {
	public let id: User.ID
	public let config: ConfigFields
	public let groups: [GroupDetailsFields]

	private let account: Account
}

// MARK -
public extension UserAuthenticatedDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Account, T>) -> T {
		account[keyPath: keyPath]
	}

	subscript<T>(dynamicMember keyPath: KeyPath<User, T>) -> T {
		account.user[keyPath: keyPath]
	}
}
