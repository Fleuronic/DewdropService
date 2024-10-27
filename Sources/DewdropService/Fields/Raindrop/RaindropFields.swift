// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Catena.Fields
import protocol Catena.Valued

public protocol RaindropFields: Fields {
	associatedtype Model: Valued<Raindrop> = Raindrop.Identified
}
