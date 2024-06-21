// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import struct Identity.Identifier

// MARK: -
public extension Filter {
	typealias ID = Identified.ID
	typealias Identified = DewdropService.Identified<Self, String>
}
