// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.User

@MemberwiseInit(.public)
public struct UserNameFields: UserFields {
	public let id: User.ID
	public let name: String
}
