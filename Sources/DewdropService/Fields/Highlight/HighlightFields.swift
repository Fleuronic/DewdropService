// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Highlight
public import protocol Catena.Fields
public import protocol Catena.Valued

public protocol HighlightFields: Fields {
	associatedtype Model: Valued<Highlight> = Highlight.Identified
}
