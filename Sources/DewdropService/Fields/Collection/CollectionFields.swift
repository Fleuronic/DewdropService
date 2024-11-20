// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import protocol Catena.Valued
import protocol Catena.Fields

public protocol CollectionFields: Fields {
	associatedtype Model: Valued<Collection> = Collection.Identified
}
