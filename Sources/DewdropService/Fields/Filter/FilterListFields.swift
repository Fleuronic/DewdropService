// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Filter

@Init public struct FilterListFields {
	public let favorited: CountFields?
	public let duplicate: CountFields?
	public let untagged: CountFields?
	public let broken: CountFields?
	public let tags: [TagFields]
	public let types: [FilterFields]
}
