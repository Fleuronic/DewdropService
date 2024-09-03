// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Raindrop

@dynamicMemberLookup
@MemberwiseInit(.public)
public struct InfoParseFields: InfoFields {
	public let meta: Meta
	
	@Init(.public) private let info: Raindrop.Info
}

// MARK -
public extension InfoParseFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop.Info, T>) -> T {
		info[keyPath: keyPath]
	}
}

// MARK -
extension InfoParseFields {
	@MemberwiseInit(.public)
public struct Meta: Sendable {
		public let tags: [TagNameFields]
	}
}
