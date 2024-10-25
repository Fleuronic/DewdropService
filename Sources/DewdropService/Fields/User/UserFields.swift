// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.User
public import protocol Catena.Fields
public import protocol Catena.Valued

public protocol UserFields: Fields {
	associatedtype Model: Valued<User> = User.Identified
}

// MARK: -
extension ModelFields: UserFields where Model == User {}
