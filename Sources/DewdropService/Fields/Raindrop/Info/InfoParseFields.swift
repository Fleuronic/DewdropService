// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Raindrop

@dynamicMemberLookup
@Init public struct InfoParseFields: InfoFields {
	public let meta: Meta
	
	private let info: Raindrop.Info
}

// MARK -
public extension InfoParseFields {
	subscript<T>(dynamicMember keyPath: KeyPath<Raindrop.Info, T>) -> T {
		info[keyPath: keyPath]
	}
}

// MARK -
extension InfoParseFields {
	@Init public struct Meta: Sendable {
		public let text: String
		public let tags: [TagNameFields]
	}
}
