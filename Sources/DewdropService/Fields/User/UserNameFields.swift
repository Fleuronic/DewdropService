// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.User

@MemberwiseInit(.public)
public struct UserNameFields: UserFields {
	public let id: User.ID
	public let name: String
}
