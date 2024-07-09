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
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedCollection {
	public let id: ID
	public let value: Value
	public let group: Group.Identified

	public var parent: Collection.Identified { fatalError() }
}

// MARK: -
public extension Collection.Identified {
	init(
		id: ID,
		title: String,
		count: Int,
		group: Group.Identified,
		parent: Collection.Identified
	) {
		self.id = id
		self.group = group

		// TODO
		fatalError()
	}
}

// MARK: -
extension Collection.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}

extension Collection.Identified: Valued {
	// MARK: Valued
	public typealias Value = Collection
}

// MARK: -
public extension [Collection] {
	var title: [String] { map(\.title) }
	var count: [Int] { map(\.count) }
}

// MARK: -
public extension [Collection.Identified] {
	var id: [Collection.ID] { map(\.id) }
	var value: [Collection] { map(\.value) }

	init(
		ids: [Collection.ID],
		titles: [String],
		counts: [Int]
	) {
		fatalError()
	}
}

// MARK: -
public extension Identifier<Collection.Identified> {
	static let all: Self = 0
	static let unsorted: Self = -1
	static let trash: Self = -99
}
