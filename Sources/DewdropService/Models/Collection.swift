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
	public let parentID: ID?
	public let value: Value
	public let group: Group.Identified
}

// MARK: -
public extension Collection.Identified {
	init(
		id: ID,
		parentID: ID?,
		title: String,
		count: Int,
		isShared: Bool,
		sortIndex: Int?,
		group: Group.Identified
	) {
		self.id = id
		self.parentID = parentID
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
	var isShared: [Bool] { map(\.isShared) }
	var sortIndex: [Int?] { map(\.sortIndex) }
}

// MARK: -
public extension [Collection.Identified] {
	var id: [Collection.ID] { map(\.id) }
	var value: [Collection] { map(\.value) }

	init(
		ids: [Collection.ID],
		titles: [String],
		counts: [Int],
		isSharedFlags: [Bool],
		sortIndices: [Int?]
	) {
		// TODO
		fatalError()
	}
}

// MARK: -
public extension Identifier<Collection.Identified> {
	static let all: Self = 0
	static let unsorted: Self = -1
	static let trash: Self = -99
}
