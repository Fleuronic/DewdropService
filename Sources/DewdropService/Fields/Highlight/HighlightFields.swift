// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import protocol Catena.Valued
import protocol Catena.Fields

public protocol HighlightFields: Fields {
	associatedtype Model: Valued<Highlight> = Highlight.Identified
}
