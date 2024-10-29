// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import struct Dewdrop.Collection
import protocol Catena.Scoped

public protocol FilterSpec {
	associatedtype FilterList: Scoped<FilterListFields>

	associatedtype FilterListFields: FilterFields

	func listFilters(forCollectionWith id: Collection.ID, searchingFor query: String?, sortingTagsBy tagSort: Tag.Sort?) async -> FilterList
}
