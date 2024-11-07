// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catenary.Fields

public protocol FilterFields: Fields {
	associatedtype Model: Valued<Filter> = Filter.Identified
}

// MARK: -
extension IDFields: FilterFields where Model == Filter.Identified {}
