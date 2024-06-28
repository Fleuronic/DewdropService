// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.Group
import struct Identity.Identifier
import protocol Identity.Identifiable
import protocol Catena.Valued

public extension Collection {
	typealias ID = Identified.ID
	typealias Identified = IdentifiedCollection
}

// MARK: -
extension Collection: Valued {
	public typealias Value = Self
}

// MARK: -
// TODO
public extension Collection.Identified {
	init(
		id: ID,
		title: String,
		count: Int,
		group: Group.Identified?
	) {
		self.id = id
		self.group = group

		value = .init(
			title: title,
			count: count,
			coverURL: nil,
			colorString: nil,
			view: .masonry,
			access: .init(level: .owner, isDraggable: true),
			sortIndex: nil,
			isPublic: false,
			isShared: false,
			isExpanded: false,
			creationDate: .init(),
			updateDate: .init()
		)
	}
}

@dynamicMemberLookup
public struct IdentifiedCollection: Valued, Identifiable {
	public typealias Value = Collection
	public typealias RawIdentifier = Int

	public let id: ID
	public let group: Group.Identified!

	private let value: Value
}

public extension IdentifiedCollection {
	subscript<T>(dynamicMember keyPath: KeyPath<Collection, T>) -> T {
		value[keyPath: keyPath]
	}
}

// MARK: -
public extension Identifier<Collection.Identified> {
	static let all: Self = 0
	static let unsorted: Self = -1
	static let trash: Self = -99
}
