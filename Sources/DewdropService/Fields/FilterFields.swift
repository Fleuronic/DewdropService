// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import protocol Catena.Valued
import protocol Catena.Fields

public protocol FilterFields: Fields {
	associatedtype Model: Valued<Filter> = Filter.Identified
}
