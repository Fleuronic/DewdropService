// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Identity.Identifier

// MARK: -
public extension Collection {
	typealias ID = Identified.ID
	typealias Identified = DewdropService.Identified<Self, Int>
}

// MARK: -
public extension Identifier<Identified<Collection, Int>> {
	static let all: Self = 0
	static let unsorted: Self = -1
	static let trash: Self = -99
}
