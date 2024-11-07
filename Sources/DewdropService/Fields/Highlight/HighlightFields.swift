// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catenary.Fields

public protocol HighlightFields: Fields {
	associatedtype Model: Valued<Highlight> = Highlight.Identified
}

// MARK: -
extension IDFields: HighlightFields where Model == Highlight.Identified {}
