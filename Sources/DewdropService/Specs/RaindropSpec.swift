// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop

public protocol RaindropSpec {
	associatedtype RaindropDetailsResult
	associatedtype RaindropRemovalResult
	associatedtype RaindropHighlightsResult
	associatedtype RaindropSuggestionsResult

	func fetchRaindropDetails(with id: Raindrop.ID) async -> RaindropDetailsResult
	func fetchRaindropHighlights(with id: Raindrop.ID) async -> RaindropHighlightsResult
	func listSuggestions(forRaindropWith id: Raindrop.ID) async -> RaindropSuggestionsResult
	// func removeRaindrop(with id: Raindrop.ID) async -> RaindropRemovalResult
//	func listSuggestionsForNewRaindrop() async -> RaindropSuggestionsResult	
}
