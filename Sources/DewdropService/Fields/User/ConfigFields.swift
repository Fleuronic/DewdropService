// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Group
import struct Dewdrop.Collection

@dynamicMemberLookup
public struct GroupFields {
	public let collections: [IDFields<Collection.Identified>]

	private let group: Group

	public init(
		group: Group,
		collectionIDs: [Collection.ID]
	) {
		self.group = group
		self.collections = collectionIDs.map(IDFields.init)
	}
}

// MARK -
public extension GroupFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Group, T>) -> T {
		group[keyPath: keyPath]
	}
}
