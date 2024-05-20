// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Dewdrop.Group
import struct Dewdrop.Collection
import struct Dewdrop.Network
import protocol Catena.Scoped

public protocol UserSpec {
	// associatedtype UserAuthenticatedDetailsResult
	associatedtype UserDetails: Scoped<UserDetailsFields>
	associatedtype NetworkConnection
	associatedtype NetworkDisconnection

	// func fetchUserAuthenticatedDetails() async -> UserAuthenticatedDetailsResult
	func fetchUserDetails(with id: User.ID) async -> UserDetails
	func connectSocialNetworkAccount(from provider: Network.Provider) async -> NetworkConnection
	func disconnectSocialNetworkAccount(from provider: Network.Provider) async -> NetworkDisconnection
	
	// func updateUser(
	// 	email: String?,
	// 	fullName: String?,
	// 	oldPassword: String?,
	// 	newPassword: String?,
	// 	config: User.Config?,
	// 	groups: [(Group, [Collection.ID])]?
	// ) async -> UserAuthenticatedDetailsResult
}
