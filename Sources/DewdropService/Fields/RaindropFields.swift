// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Catena.ImpossibleFields
import protocol Catena.Valued
import protocol Catena.Fields

public protocol RaindropFields: Fields {
	associatedtype Model: Valued<Raindrop> = Raindrop.Identified
}

// MARK: -
extension ImpossibleFields: RaindropFields where Model == Raindrop {}
