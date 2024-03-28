// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection

@dynamicMemberLookup
public struct CollectionFields {
	private let detailsFields: CollectionDetailsFields

	public init(_ detailsFields: CollectionDetailsFields) {
		self.detailsFields = detailsFields
	}
}

// MARK -
public extension CollectionFields {
	subscript<T>(dynamicMember keyPath: KeyPath<CollectionDetailsFields, T>) -> T {
		detailsFields[keyPath: keyPath]
	}
}
