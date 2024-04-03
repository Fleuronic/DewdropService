// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection

public protocol FilterSpec {
	associatedtype FilterListResult

	func listFilters(forCollectionWith id: Collection.ID?) async -> FilterListResult
}
