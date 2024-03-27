// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import protocol Identity.Identifiable

public struct IdentifiedCollection {
	public let id: ID

	let value: Collection
}

// MARK: -
public extension Collection {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedCollection
}

// MARK: -
extension Collection.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}
