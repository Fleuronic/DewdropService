// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Media
import protocol Catena.Valued
import protocol Catena.Fields

public protocol MediaFields: Fields {
	associatedtype Model: Valued<Media> = Media.Identified
}
