// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catena.Fields

public protocol UserFields: Fields {
	associatedtype Model: Valued<User> = User.Identified
}
