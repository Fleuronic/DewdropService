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
extension Collection: @retroactive Valued {
	// MARK: Valued
	public typealias Value = Self
}

// MARK: -
public struct IdentifiedCollection: Sendable {
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
		sortIndex: Int,
		group: Group.Identified
	) {
		self.id = id
		self.parentID = parentID
		self.group = group

		// TODO
		fatalError()
		/*value = .init(
			title: title,
			count: count,
			coverURL: URL?,
			colorString: String?,
			view: Collection.View?,
			access: Collection.Access,
			sortIndex: sortIndex,
			isPublic: Bool,
			isShared: isShared,
			isExpanded: Bool,
			creationDate: Date,
			updateDate: Date
		)*/
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
	var sortIndex: [Int] { map(\.sortIndex) }
}

// MARK: -
public extension [Collection.Identified] {
	var id: [Collection.ID] { map(\.id) }
	var parentID: [Collection.ID?] { map(\.parentID) }
	var value: [Collection] { map(\.value) }

	init(
		ids: [Collection.ID],
		parentIDs: [Collection.ID?],
		titles: [String],
		counts: [Int],
		isSharedFlags: [Bool],
		sortIndices: [Int]
	) {
		let groups: [Group.Identified] = []
		self = ids.enumerated().map { index, id in
			.init(
				id: id,
				parentID: parentIDs[index],
				title: titles[index],
				count: counts[index],
				isShared: isSharedFlags[index],
				sortIndex: sortIndices[index],
				group: groups[index]
			)
		}
	}
}

// MARK: -
public extension Identifier<Collection.Identified> {
	static let all: Self = 0
	static let unsorted: Self = -1
	static let trash: Self = -99
}
