// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.Group
import struct Catena.IDFields
import struct Identity.Identifier
import struct Foundation.URL
import struct Foundation.Date
import protocol Catena.Valued
import protocol Catena.Representable
import protocol Identity.Identifiable

public extension Collection {
	typealias ID = Identified.ID
	typealias IDFields = Catena.IDFields<Identified>
	typealias Identified = IdentifiedCollection

	static func systemTitle(forCollectionWith id: ID) -> String? {
		switch id {
		case .all: "All bookmarks"
		case .unsorted: "Unsorted"
		case .trash: "Trash"
		default: nil
		}
	}
}

// MARK: -
extension Collection: Catena.Valued {
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
		coverURL: URL?,
		colorString: String?,
		view: Collection.View,
		sortIndex: Int,
		isPublic: Bool,
		isShared: Bool,
		isExpanded: Bool,
		creationDate: Date,
		updateDate: Date,
		group: Group.Identified
	) {
		self.init(
			id: id,
			parentID: parentID,
			value: .init(
				title: title,
				count: count,
				coverURL: coverURL,
				colorString: colorString,
				view: view,
				access: .init(level: .owner, isDraggable: true), // TODO
				sortIndex: sortIndex,
				isPublic: isPublic,
				isShared: isShared,
				isExpanded: isExpanded,
				creationDate: creationDate,
				updateDate: updateDate
			),
			group: group
		)
	}
}

// MARK: -
extension Collection.Identified: Identifiable {
	// MARK: Identifiable
	public typealias RawIdentifier = Int
}

extension Collection.Identified: Valued {
	// MARK: Representable
	public typealias Value = Collection
}

// MARK: -
public extension [Collection] {
	var title: [String] { map(\.title) }
	var count: [Int] { map(\.count) }
	var coverURL: [URL?] { map(\.coverURL) }
	var colorString: [String?] { map(\.colorString) }
	var view: [Collection.View] { map(\.view) }
	var sortIndex: [Int] { map(\.sortIndex) }
	var isPublic: [Bool] { map(\.isPublic) }
	var isShared: [Bool] { map(\.isShared) }
	var isExpanded: [Bool] { map(\.isExpanded) }
	var creationDate: [Date] { map(\.creationDate) }
	var updateDate: [Date] { map(\.updateDate) }
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
		coverURLs: [URL?],
		colorStrings: [String?],
		views: [Collection.View],
		sortIndices: [Int],
		isPublicFlags: [Bool],
		isSharedFlags: [Bool],
		isExpandedFlags: [Bool],
		creationDates: [Date],
		updateDates: [Date]
	) {
		let groups: [Group.Identified] = []
		self = ids.enumerated().map { index, id in
			.init(
				id: id,
				parentID: parentIDs[index],
				title: titles[index],
				count: counts[index],
				coverURL: coverURLs[index],
				colorString: colorStrings[index],
				view: views[index],
				sortIndex: sortIndices[index],
				isPublic: isPublicFlags[index],
				isShared: isSharedFlags[index],
				isExpanded: isExpandedFlags[index],
				creationDate: creationDates[index],
				updateDate: updateDates[index],
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
