// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Catena.Valued
import protocol Catena.Fields

public protocol RaindropFields: Fields {
	associatedtype Model: Valued<Raindrop> = Raindrop.Identified
}

// MARK: -
extension Never: DewdropService.RaindropFields {}
