// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import protocol Catena.Valued
import protocol Catenary.Fields

public protocol TagFields: Fields {
	associatedtype Model: Valued<Tag> = Tag.Identified
}

// MARK: -
extension ModelFields: TagFields where Model == Tag {}
