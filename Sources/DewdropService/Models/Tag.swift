// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import struct Identity.Identifier

// MARK: -
public extension Tag {
	typealias ID = Identified.ID
	typealias Identified = DewdropService.Identified<Self, String>
}
