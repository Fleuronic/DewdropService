// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Group
public import protocol Catena.Fields
public import protocol Catena.Valued

public protocol GroupFields: Fields {
	associatedtype Model: Valued<Group> = Group.Identified
}
