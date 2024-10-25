// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Tag
public import struct Dewdrop.Collection
public import protocol Catena.Scoped

public protocol FilterSpec {
	associatedtype FilterList: Scoped<FilterListFields>
	associatedtype FilterListFields: FilterFields

	func listFilters(forCollectionWith id: Collection.ID, searchingFor query: String?, sortingTagsBy tagSort: Tag.Sort?) async -> FilterList
}
