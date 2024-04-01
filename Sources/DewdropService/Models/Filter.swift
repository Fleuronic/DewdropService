// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter
import protocol Identity.Identifiable

public struct IdentifiedFilter {
	public let id: ID

	let value: Filter
}

// MARK: -
public extension Filter {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedFilter
}

// MARK: -
extension Filter.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = String
}
