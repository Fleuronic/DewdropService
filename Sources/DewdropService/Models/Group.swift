// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Group
import protocol Catena.Valued
import protocol Identity.Identifiable

public extension Group {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedGroup
}

// MARK: -
extension Group: Valued {
	public typealias Value = Self
}

// MARK: -
// TODO
public extension Group.Identified {
	init(
		id: ID
	) {
		value = .init(
			title: id.rawValue,
			isHidden: false,
			sortIndex: 0
		)
	}
}

@dynamicMemberLookup
public struct IdentifiedGroup: Valued, Identifiable {
	public typealias Value = Group // TODO
	public typealias RawIdentifier = String

	private let value: Value
}

public extension IdentifiedGroup {
	var id: ID {
		.init(rawValue: value.title)
	}

	subscript<T>(dynamicMember keyPath: KeyPath<Group, T>) -> T {
		value[keyPath: keyPath]
	}
}
