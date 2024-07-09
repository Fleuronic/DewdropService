// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import protocol Catena.Valued
import protocol Identity.Identifiable

// MARK: -
public extension Highlight {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedHighlight
}

// MARK: -
public struct IdentifiedHighlight: Identifiable {
	public let id: Self.ID
	public let value: Value
}

// MARK: -
extension Highlight.Identified: Valued {
	// MARK: Valued
	public typealias Value = Highlight
}
