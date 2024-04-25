// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Dewdrop.Group
import struct Dewdrop.Collection
import struct Dewdrop.Network

public protocol UserSpec {
	associatedtype UserDetailsResult
	associatedtype UserAuthenticatedDetailsResult
	associatedtype NetworkConnectionResult
	associatedtype NetworkDisconnectionResult

	func fetchUserAuthenticatedDetails() async -> UserAuthenticatedDetailsResult
	func fetchUserDetails(with id: User.ID) async -> UserDetailsResult
	func connectSocialNetworkAccount(from provider: Network.Provider) async -> NetworkConnectionResult
	func disconnectSocialNetworkAccount(from provider: Network.Provider) async -> NetworkDisconnectionResult
	
	func updateUser(
		email: String?,
		fullName: String?,
		oldPassword: String?,
		newPassword: String?,
		config: User.Config?,
		groups: [(Group, [Collection.ID])]?
	) async -> UserAuthenticatedDetailsResult
}
