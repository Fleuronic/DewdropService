// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Tag

@Init public struct TagNameFields {
	public let name: String
}

// MARK: -
extension TagNameFields: TagFields {
	// MARK: Fields
	public typealias Model = Tag
}
