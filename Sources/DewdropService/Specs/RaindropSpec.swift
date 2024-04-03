// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop

public protocol RaindropSpec {
	associatedtype RaindropDetailsResult
	associatedtype RaindropHighlightsResult
	associatedtype RaindropSuggestionsResult
	associatedtype RaindropCopyDownloadResult
	associatedtype RaindropRemovalResult

	func fetchRaindropDetails(with id: Raindrop.ID) async -> RaindropDetailsResult
	func fetchRaindropHighlights(with id: Raindrop.ID) async -> RaindropHighlightsResult
	func listSuggestions(forRaindropWith id: Raindrop.ID) async -> RaindropSuggestionsResult
//	func listSuggestionsForNewRaindrop() async -> RaindropSuggestionsResult	
	func downloadPermanentCopy(ofRaindropWith id: Raindrop.ID) async -> RaindropCopyDownloadResult
	func removeRaindrop(with id: Raindrop.ID) async -> RaindropRemovalResult
}
