// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import struct Dewdrop.Collection

public protocol FilterSpec {
	associatedtype FilterListResult

	func listFilters(forCollectionWith id: Collection.ID, search: String?, sortingTagsBy tagSort: Tag.Sort?) async -> FilterListResult
}
