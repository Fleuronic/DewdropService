// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Dewdrop.Account

@dynamicMemberLookup
public struct UserAuthenticatedDetailsFields {
	public let id: User.ID
	public let config: ConfigFields
	public let groups: [GroupDetailsFields]

	private let account: Account

	public init(
		id: User.ID,
		config: ConfigFields,
		groups: [GroupDetailsFields],
		account: Account
	) {
		self.id = id
		self.config = config
		self.groups = groups
		self.account = account
	}
}

// MARK -
public extension UserAuthenticatedDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<User, T>) -> T {
		account.user[keyPath: keyPath]
	}
	
	subscript<T>(dynamicMember keyPath: KeyPath<Account, T>) -> T {
		account[keyPath: keyPath]
	}
}

// MARK: -
extension UserAuthenticatedDetailsFields: UserFields {
	// MARK: Fields
	public typealias Model = User
}
