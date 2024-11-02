// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import protocol Catena.Scoped

public protocol HighlightSpec {
	associatedtype HighlightList: Scoped<HighlightListFields>

	associatedtype HighlightListFields: HighlightFields

	func listHighlights(onPage page: Int?, listing highlightsPerPage: Int?) async -> HighlightList
//	func listHighlights(inCollectionWith id: Collection.ID, onPage page: Int?, listing highlightsPerPage: Int?) async -> HighlightListResult
	func listHighlights(ofRaindropWith id: Raindrop.ID) async -> HighlightList
//	func addHighlights(with contents: [Highlight.Content], toRaindropWith id: Raindrop.ID) async -> RaindropHighlightsResult
//	func updateHighlights(with ids: [Highlight.ID], ofRaindropWith id: Raindrop.ID, to contents: [Highlight.Content]) async -> RaindropHighlightsResult
//	func removeHighlights(with ids: [Highlight.ID], fromRaindropWith id: Raindrop.ID) async -> RaindropHighlightsResult
}
