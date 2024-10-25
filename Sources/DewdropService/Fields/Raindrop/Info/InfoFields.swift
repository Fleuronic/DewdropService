// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Raindrop
public import protocol Catena.Fields
public import protocol Catena.Valued

public protocol InfoFields: Fields {
	typealias Model = Raindrop.Info
}
