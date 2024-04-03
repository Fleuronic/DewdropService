// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Filter

@Init public struct FilterListFields {
	public let favorited: FilterCountFields?
	public let duplicate: FilterCountFields?
	public let untagged: FilterCountFields?
	public let broken: FilterCountFields?
	public let tags: [TagFields]
	public let types: [FilterFields]
}
