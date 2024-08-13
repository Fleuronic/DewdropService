// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Identity.Identifier
import protocol Catena.Fields
import protocol Catena.Valued

public protocol RaindropFields: Fields where Model == Raindrop.Identified {
	init(fields: RaindropDetailsFields)
}
