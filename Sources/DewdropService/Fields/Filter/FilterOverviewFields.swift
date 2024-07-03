// Copyright © Fleuronic LLC. All rights reserved.

import InitMacro

import struct Dewdrop.Filter

@Init public struct FilterOverviewFields {
	public let filters: [FilterCountFields]
	public let tags: [TagCountFields]
	public let favorited: Filter?
	public let highlighted: Filter?
	public let duplicate: Filter?
	public let untagged: Filter?
	public let broken: Filter?
}

// MARK: -
extension FilterOverviewFields: FilterFields {
	public typealias Model = Filter
}
