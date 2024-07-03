// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.User

@Init public struct UserNameFields {
	public let id: User.ID
	public let name: String
}

// MARK: -
extension UserNameFields: UserFields {
	// MARK: Fields
	public typealias Model = User
}
