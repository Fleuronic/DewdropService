// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Dewdrop.Collection

public protocol HighlightSpec {
	associatedtype HighlightListResult

	func listHighlights(onPage page: Int?, listing highlightsPerPage: Int?) async -> HighlightListResult
	func listHighlights(inCollectionWith id: Collection.ID, onPage page: Int?, listing highlightsPerPage: Int?) async -> HighlightListResult
}
