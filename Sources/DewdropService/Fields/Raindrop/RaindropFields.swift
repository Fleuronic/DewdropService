// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catenary.Fields

public protocol RaindropFields: Fields {
	associatedtype Model: Valued<Raindrop> = Raindrop.Identified
}

// MARK: -
extension IDFields: RaindropFields where Model == Raindrop.Identified {}
