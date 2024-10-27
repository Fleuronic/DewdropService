// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import protocol Catena.Fields
import protocol Catena.Valued

public protocol FilterFields: Fields {
	associatedtype Model: Valued<Filter> = Filter.Identified
}
