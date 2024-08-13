// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import protocol Catena.Fields
import protocol Catena.Valued

public protocol UserFields: Fields where Model: Valued<User> {}

// MARK: -
extension ModelFields: UserFields where Model == User {}
