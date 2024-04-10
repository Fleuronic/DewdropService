// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Identity.Identifier
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
public extension Identifier<Collection.Identified> {
	static let all: Self = 0
	static let trash: Self = -99
}

// MARK: -
extension Collection.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}
