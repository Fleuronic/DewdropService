// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Identity.Identifier

// MARK: -
public extension Raindrop {
	typealias ID = Identified.ID
	typealias Identified = DewdropService.Identified<Self, Int>
}
