// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Group
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catenary.Fields

public protocol GroupFields: Fields {
	associatedtype Model: Valued<Group> = Group.Identified
}

// MARK: -
extension IDFields: GroupFields where Model == Group.Identified {}
