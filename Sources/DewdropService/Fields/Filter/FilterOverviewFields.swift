// Copyright © Fleuronic LLC. All rights reserved.

public import MemberwiseInit

public import struct Dewdrop.Filter

@MemberwiseInit(.public)
public struct FilterOverviewFields: FilterFields {
	public let tags: [TagCountFields]
	public let typeFilters: [FilterCountFields]
	public let favorited: Filter?
	public let highlighted: Filter?
	public let duplicate: Filter?
	public let untagged: Filter?
	public let broken: Filter?
}
