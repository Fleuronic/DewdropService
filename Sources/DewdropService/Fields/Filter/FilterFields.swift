// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Filter
public import protocol Catena.Fields
public import protocol Catena.Valued

public protocol FilterFields: Fields {
	associatedtype Model: Valued<Filter> = Filter.Identified
}
