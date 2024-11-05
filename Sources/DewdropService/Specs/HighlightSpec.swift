// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import protocol Catena.Scoped

public protocol HighlightSpec {
	associatedtype HighlightList: Scoped<HighlightListFields>
	associatedtype RaindropHighlightList: Scoped<RaindropHighlightListFields>

	associatedtype HighlightListFields: HighlightFields
	associatedtype RaindropHighlightListFields: RaindropFields

	func listHighlights(inCollectionWith id: Collection.ID, onPage page: Int?, listing highlightsPerPage: Int?) async -> HighlightList
	func listHighlights(ofRaindropWith id: Raindrop.ID) async -> RaindropHighlightList
//	func addHighlights(with contents: [Highlight.Content], toRaindropWith id: Raindrop.ID) async -> RaindropHighlightsResult
//	func updateHighlights(with ids: [Highlight.ID], ofRaindropWith id: Raindrop.ID, to contents: [Highlight.Content]) async -> RaindropHighlightsResult
//	func removeHighlights(with ids: [Highlight.ID], fromRaindropWith id: Raindrop.ID) async -> RaindropHighlightsResult
}
