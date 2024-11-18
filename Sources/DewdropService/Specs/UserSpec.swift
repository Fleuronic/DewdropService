// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.Password
import struct Dewdrop.User
import struct Dewdrop.Group
import struct Dewdrop.Collection
import protocol Catena.Scoped

public protocol UserSpec {
	associatedtype PublicUserFetch: Scoped<PublicUserFetchFields>
	associatedtype AuthenticatedUserFetch: Scoped<AuthenticatedUserFetchFields>
	associatedtype AuthenticatedUserUpdate // TODO
	associatedtype NetworkConnection
	associatedtype NetworkDisconnection

	associatedtype PublicUserFetchFields: UserFields
	associatedtype AuthenticatedUserFetchFields: UserAuthenticatedFields
	associatedtype NetworkProvider

	func fetchUser(with id: User.ID) async -> PublicUserFetch
	func fetchAuthenticatedUser() async -> AuthenticatedUserFetch
	func connectSocialNetworkAccount(from provider: NetworkProvider) async -> NetworkConnection
	func disconnectSocialNetworkAccount(from provider: NetworkProvider) async -> NetworkDisconnection

	func updateAuthenticatedUser(
		fullName: String?,
		email: String?,
		password: Password?
//		config: User.Config?,
//		groups: [Group]?
	) async -> AuthenticatedUserUpdate
}
