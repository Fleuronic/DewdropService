// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import enum Dewdrop.Password
import struct Dewdrop.User
import struct Dewdrop.Collection
import protocol Catena.Scoped

public protocol UserSpec {
	associatedtype PublicUserFetch: Scoped<PublicUserFetchFields>
	associatedtype AuthenticatedUserFetch: Scoped<AuthenticatedUserFetchFields>
	associatedtype AuthenticatedUserUpdate: Scoped<AuthenticatedUserUpdateFields>
	associatedtype NetworkConnection
	associatedtype NetworkDisconnection

	associatedtype PublicUserFetchFields: UserFields
	associatedtype AuthenticatedUserFetchFields: UserAuthenticatedFields
	associatedtype AuthenticatedUserUpdateFields: UserAuthenticatedFields
	associatedtype GroupUpdateFields: GroupFields
	associatedtype NetworkProvider

	func fetchUser(with id: User.ID) async -> PublicUserFetch
	func fetchAuthenticatedUser() async -> AuthenticatedUserFetch
	func updateAuthenticatedUser(with parameters: User.UpdateParameters<GroupUpdateFields>) async -> AuthenticatedUserUpdate
	func connectSocialNetworkAccount(from provider: NetworkProvider) async -> NetworkConnection
	func disconnectSocialNetworkAccount(from provider: NetworkProvider) async -> NetworkDisconnection
}

// MARK: -
public extension User {
	@MemberwiseInit(.public)
	struct UpdateParameters<Group> {
		@Init(default: nil) public let fullName: String?
		@Init(default: nil) public let email: String?
		@Init(default: nil) public let password: Password?
		@Init(default: nil) public let config: User.Config?
		@Init(default: nil) public let groups: [Group]?
	}
}
