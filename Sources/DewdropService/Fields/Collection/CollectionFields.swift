// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import protocol Catena.Fields
import protocol Catena.Valued

public protocol CollectionFields: Fields {
	associatedtype Model: Valued<Collection> = Collection.Identified
}
