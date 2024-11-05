// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Raindrop

@dynamicMemberLookup
@_UncheckedMemberwiseInit(.public)
public struct InfoParseFields: InfoFields {
	public let meta: Meta
	
	private let info: Raindrop.Info
}

// MARK -
public extension InfoParseFields {
	@MemberwiseInit(.public)
	struct Meta: Sendable {
		public let tags: [TagNameFields]
	}

	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop.Info, T>) -> T {
		info[keyPath: keyPath]
	}
}
