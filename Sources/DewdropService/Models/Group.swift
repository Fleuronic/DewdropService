// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Group
import struct Dewdrop.Collection
import protocol Catena.Valued
import protocol Identity.Identifiable

public extension Group {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedGroup
}

// MARK: -
extension Group: @retroactive Valued {
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedGroup: Sendable {
	public let value: Value
	public let collections: [Collection.Identified]
}

// MARK: -
public extension Group.Identified {
	init(
		id: ID,
		isHidden: Bool,
		sortIndex: Int,
		collections: [Collection.Identified]
	) {
		self.collections = collections
	
		value = .init(
			title: id.rawValue,
			isHidden: isHidden,
			sortIndex: sortIndex
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
	public var id: ID { .init(rawValue: value.title) }
}
