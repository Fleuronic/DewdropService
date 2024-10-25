// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.User
public import struct Dewdrop.Group
public import struct Dewdrop.Collection
public import struct Dewdrop.Network
public import protocol Catena.Scoped

public protocol UserSpec {
	associatedtype UserDetailsFields
	associatedtype UserAuthenticatedDetails: Scoped<UserDetailsFields>
	associatedtype UserPublicDetails: Scoped<UserPublicDetailsFields>

	associatedtype NetworkConnection
	associatedtype NetworkDisconnection

	func fetchUserAuthenticatedDetails() async -> UserAuthenticatedDetails
	func fetchUserPublicDetails(with id: User.ID) async -> UserPublicDetails
	func connectSocialNetworkAccount(from provider: Network.Provider) async -> NetworkConnection
	func disconnectSocialNetworkAccount(from provider: Network.Provider) async -> NetworkDisconnection
}
