// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import protocol Catena.Valued
import protocol Identity.Identifiable

public extension Tag {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedTag
}

// MARK: -
extension Tag: Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedTag: Identifiable {
	public let id: Self.ID
	public let value: Value
}

// MARK: -
extension Tag.Identified: Valued {
	// MARK: Valued
	public typealias Value = Tag
}
