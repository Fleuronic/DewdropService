// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.Raindrop
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catenary.Fields

public protocol CollectionFields: Fields {
	associatedtype Model: Valued<Collection> = Collection.Identified
}

// MARK: -
extension IDFields: CollectionFields where Model == Collection.Identified {}
