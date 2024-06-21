// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup
import struct Identity.Identifier

// MARK: -
public extension Backup {
	typealias ID = Identified.ID
	typealias Identified = DewdropService.Identified<Self, String>
}
