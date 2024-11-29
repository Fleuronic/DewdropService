// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Group
import struct Dewdrop.Collection
import struct Catena.IDFields
import protocol Catena.Valued
import protocol Catena.Representable
import protocol Identity.Identifiable

public extension Group {
	typealias ID = Identified.ID
	typealias IDFields = Catena.IDFields<Identified>
	typealias Identified = IdentifiedGroup
}

// MARK: -
extension Group: Catena.Valued {
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedGroup: Sendable {
	public let value: Value
}

// MARK: -
public extension Group.Identified {
	init(
		id: ID,
		title: String,
		isHidden: Bool
	) {		
		value = .init(
			title: title,
			sortIndex: id.rawValue,
			isHidden: isHidden
		)
	}
}

// MARK: -
extension Group.Identified: Valued {
	// MARK: Valued
	public typealias Value = Group
}

extension Group.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int

	public var id: ID { .init(rawValue: value.sortIndex) }
}
