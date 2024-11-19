// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Catena.Valued
import protocol Catenary.Fields

public protocol RaindropFields: Fields {
	associatedtype Model: Valued<Raindrop> = Raindrop.Identified
}
