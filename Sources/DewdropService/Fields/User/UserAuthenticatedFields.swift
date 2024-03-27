// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Dewdrop.Account

@dynamicMemberLookup
public struct UserAuthenticatedFields {
	public let id: User.ID

	private let user: User
	private let account: Account

	public init(
		id: User.ID,
		user: User,
		account: Account
	) {
		self.id = id
		self.user = user
		self.account = account
	}
}

// MARK -
public extension UserAuthenticatedFields {
	subscript<T>(dynamicMember keyPath: KeyPath<User, T>) -> T {
		user[keyPath: keyPath]
	}
	
	subscript<T>(dynamicMember keyPath: KeyPath<Account, T>) -> T {
		account[keyPath: keyPath]
	}
}
