// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Info

@dynamicMemberLookup
public struct InfoFields {
	public let meta: MetaFields
	
	private let info: Info

	public init(
		info: Info,
		meta: MetaFields
	) {
		self.info = info
		self.meta = meta
	}
}

// MARK -
public extension InfoFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Info, T>) -> T {
		info[keyPath: keyPath]
	}
}
