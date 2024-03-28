// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Dewdrop.Account

@dynamicMemberLookup
public struct UserAuthenticatedFields {
	public let id: User.ID
	public let config: ConfigFields
	public let groups: [GroupFields]

	private let account: Account

	public init(
		id: User.ID,
		config: ConfigFields,
		groups: [GroupFields],
		account: Account
	) {
		self.id = id
		self.config = config
		self.groups = groups
		self.account = account
	}
}

// MARK -
public extension UserAuthenticatedFields {
	subscript<T>(dynamicMember keyPath: KeyPath<User, T>) -> T {
		account.user[keyPath: keyPath]
	}
	
	subscript<T>(dynamicMember keyPath: KeyPath<Account, T>) -> T {
		account[keyPath: keyPath]
	}
}
