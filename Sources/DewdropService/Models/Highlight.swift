// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Identity.Identifier

// MARK: -
public extension Highlight {
	typealias ID = Identified.ID
	typealias Identified = DewdropService.Identified<Self, String>
}
