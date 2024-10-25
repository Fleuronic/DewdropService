// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Tag
public import protocol Catena.Fields
public import protocol Catena.Valued
public import protocol Catena.Fields

public protocol TagFields: Fields {
	associatedtype Model: Valued<Tag> = Tag.Identified
}

// MARK: -
extension ModelFields: TagFields where Model == Tag {}
