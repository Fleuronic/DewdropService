// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Group
public import struct Dewdrop.Collection
public import struct Catena.IDFields

@dynamicMemberLookup
public struct GroupDetailsFields: GroupFields {
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
public extension GroupDetailsFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Group, T>) -> T {
		group[keyPath: keyPath]
	}
}
