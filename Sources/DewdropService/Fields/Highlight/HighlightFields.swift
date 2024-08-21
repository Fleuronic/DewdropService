// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import protocol Catena.Fields
import protocol Catena.Valued

public protocol HighlightFields: Fields {
	associatedtype Model: Valued<Highlight> = Highlight.Identified
}
