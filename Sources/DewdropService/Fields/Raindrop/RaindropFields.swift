// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop

@dynamicMemberLookup
public struct RaindropFields {
	private let detailsFields: RaindropDetailsFields

	public init(_ detailsFields: RaindropDetailsFields) {
		self.detailsFields = detailsFields
	}
}

// MARK -
public extension RaindropFields {
	subscript<T>(dynamicMember keyPath: KeyPath<RaindropDetailsFields, T>) -> T {
		detailsFields[keyPath: keyPath]
	}
}
