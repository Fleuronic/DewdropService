// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User

public protocol UserSpec {
	associatedtype UserDetailsResult
	associatedtype UserAuthenticatedDetailsResult

	func fetchUserAuthenticatedDetails() async -> UserAuthenticatedDetailsResult
	func fetchUserDetails(with id: User.ID) async -> UserDetailsResult
	
	func updateUser(
		email: String?,
		fullName: String?,
		oldPassword: String?,
		newPassword: String?
	) async -> UserAuthenticatedDetailsResult
}
