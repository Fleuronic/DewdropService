// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Filter

public protocol FilterSpec {
	associatedtype FilterListResult

	func listFilters(forCollectionWith id: Filter.ID?) async -> FilterListResult
}
