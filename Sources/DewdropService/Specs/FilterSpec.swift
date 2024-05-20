// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import struct Dewdrop.Collection
import protocol Catena.Scoped

public protocol FilterSpec {
	associatedtype FilterListFields: FilterFields
	associatedtype FilterList: Scoped<FilterListFields>

	func listFilters(forCollectionWith id: Collection.ID, searchingFor search: String?, sortingTagsBy tagSort: Tag.Sort?) async -> FilterList
}
