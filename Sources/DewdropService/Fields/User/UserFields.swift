// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import protocol Catena.Fields
import protocol Catena.Valued

public protocol UserFields: Fields {
	associatedtype Model: Valued<User> = User.Identified
}

// MARK: -
extension ModelFields: UserFields where Model == User {}
