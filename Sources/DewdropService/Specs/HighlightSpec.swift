// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.Highlight
import struct Dewdrop.Collection

public protocol HighlightSpec {
	associatedtype HighlightListResult
	associatedtype RaindropHighlightsResult

	func listHighlights(inCollectionWith id: Collection.ID?) async -> HighlightListResult
	func fetchRaindropHighlights(with id: Raindrop.ID) async -> RaindropHighlightsResult
}
