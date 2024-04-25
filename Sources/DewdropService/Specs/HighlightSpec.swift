// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop
import struct Dewdrop.Collection

public protocol HighlightSpec {
	associatedtype HighlightListResult
	associatedtype RaindropHighlightsResult

	func listHighlights(onPage page: Int?, listing highlightsPerPage: Int?) async -> HighlightListResult
	func listHighlights(inCollectionWith id: Collection.ID, onPage page: Int?, listing highlightsPerPage: Int?) async -> HighlightListResult
	func addHighlights(with contents: [Highlight.Content], toRaindropWith id: Raindrop.ID) async -> RaindropHighlightsResult
	func updateHighlights(with ids: [Highlight.ID], ofRaindropWith id: Raindrop.ID, to contents: [Highlight.Content]) async -> RaindropHighlightsResult
	func removeHighlights(with ids: [Highlight.ID], fromRaindropWith id: Raindrop.ID) async -> RaindropHighlightsResult
}
