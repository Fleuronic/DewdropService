// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import protocol Catena.Valued
import protocol Catena.Fields

public protocol InfoFields: Fields {
	typealias Model = Raindrop.Info
}
