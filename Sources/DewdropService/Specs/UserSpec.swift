// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Dewdrop.Group
import struct Dewdrop.Collection
import struct Dewdrop.Network
import protocol Catena.Scoped

public protocol UserSpec {
	associatedtype AuthenticatedUser: Scoped<UserAuthenticatedFields>
	associatedtype PublicUser: Scoped<UserPublicFields>
	associatedtype NetworkConnection
	associatedtype NetworkDisconnection

	associatedtype UserAuthenticatedFields

	func fetchAuthenticatedUser() async -> AuthenticatedUser
	func fetchUser(with id: User.ID) async -> PublicUser
	func connectSocialNetworkAccount(from provider: Network.Provider) async -> NetworkConnection
	func disconnectSocialNetworkAccount(from provider: Network.Provider) async -> NetworkDisconnection
}
