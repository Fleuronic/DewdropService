// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import protocol Identity.Identifiable

public struct IdentifiedTag {
	public let id: ID
	
	let value: Tag
}

// MARK: -
public extension Tag {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedTag
}

// MARK: -
extension Tag.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = String
}
