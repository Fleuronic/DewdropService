// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import protocol Catena.Valued
import protocol Identity.Identifiable

public extension Tag {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedTag
}

// MARK: -
extension Tag: Catena.Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedTag: Identifiable, Sendable {
	public let id: Self.ID
	public let value: Value
}

// MARK: -
public extension Tag.Identified {
	init(
		id: ID,
		count: Int
	) {
		self.id = id
		
		value = .init(count: count)
	}
}

// MARK: -
extension Tag.Identified: Valued {
	// MARK: Valued
	public typealias Value = Tag
}
