// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import protocol Identity.Identifiable

@dynamicMemberLookup
public struct IdentifiedHighlight {
	public let id: ID

	let value: Highlight
}

// MARK: -
public extension Highlight {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedHighlight
	
	func identified(with id: ID) -> Identified {
		.init(
			id: id,
			value: self
		)
	}
}

// MARK: -
extension Highlight.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = String
}

public extension Highlight.Identified {
	subscript<T>(dynamicMember keyPath: KeyPath<Highlight, T>) -> T {
		value[keyPath: keyPath]
	}
}
