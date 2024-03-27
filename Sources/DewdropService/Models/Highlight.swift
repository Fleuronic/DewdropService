// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import protocol Identity.Identifiable

public struct IdentifiedHighlight {
	public let id: ID

	let value: Highlight
}

// MARK: -
public extension Highlight {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedHighlight
}

// MARK: -
extension Highlight.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = String
}
