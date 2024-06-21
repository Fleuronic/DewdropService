// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.User
import struct Identity.Identifier

// MARK: -
public extension User {
	typealias ID = Identified.ID
	typealias Identified = DewdropService.Identified<Self, Int>
}
