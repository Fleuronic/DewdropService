// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Collection
public import protocol Catena.Fields
public import protocol Catena.Valued

public protocol CollectionFields: Fields {
	associatedtype Model: Valued<Collection> = Collection.Identified
}
