// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User

public protocol UserSpec {
	associatedtype UserDetailsResult
	associatedtype UserAuthenticatedDetailsResult

	func fetchUserAuthenticatedDetails() async -> UserAuthenticatedDetailsResult
	func fetchUserDetails(with id: User.ID) async -> UserDetailsResult
}
