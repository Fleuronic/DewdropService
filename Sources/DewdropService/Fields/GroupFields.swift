// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Group
import protocol Catena.Valued
import protocol Catena.Fields

public protocol GroupFields: Fields {
	associatedtype Model: Valued<Group> = Group.Identified
}
