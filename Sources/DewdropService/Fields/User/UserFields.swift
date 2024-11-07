// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catenary.Fields

public protocol UserFields: Fields {
	associatedtype Model: Valued<User> = User.Identified
}

// MARK: -
extension ModelFields: UserFields where Model == User {}

// MARK: -
extension IDFields: UserFields where Model == User.Identified {}
