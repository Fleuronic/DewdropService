// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Highlight
import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import protocol Catena.Scoped

public protocol HighlightSpec {
	associatedtype HighlightList: Scoped<HighlightListFields>
	associatedtype HighlightInRaindropList: Scoped<HighlightInRaindropListFields>

	associatedtype HighlightListFields: HighlightFields
	associatedtype HighlightInRaindropListFields: HighlightFields

	func listHighlights(inCollectionWith id: Collection.ID, onPage page: Int?, listing highlightsPerPage: Int?) async -> HighlightList
	func listHighlights(ofRaindropWith id: Raindrop.ID) async -> HighlightInRaindropList
	func addHighlights(with contents: [Highlight.Content], toRaindropWith id: Raindrop.ID) async -> HighlightInRaindropList
	func updateHighlights(with ids: [Highlight.ID], ofRaindropWith id: Raindrop.ID, to contents: [Highlight.Content]) async -> HighlightInRaindropList
	func removeHighlights(with ids: [Highlight.ID], fromRaindropWith id: Raindrop.ID) async -> HighlightInRaindropList
}
