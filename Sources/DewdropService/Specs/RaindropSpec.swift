// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection

public protocol RaindropSpec {
	associatedtype RaindropListResult
	associatedtype RaindropDetailsResult
	associatedtype RaindropHighlightsResult
	associatedtype RaindropSuggestionsResult
	associatedtype RaindropCopyDownloadResult
	associatedtype RaindropRemovalResult

	func listRaindrops(inCollectionWith id: Collection.ID, searchingFor search: String?, sortedBy sort: Raindrop.Sort?, onPage page: Int?, listing raindropsPerPage: Int?) async -> RaindropListResult
	func fetchRaindropDetails(with id: Raindrop.ID) async -> RaindropDetailsResult
	func fetchRaindropHighlights(with id: Raindrop.ID) async -> RaindropHighlightsResult
	func listSuggestions(forRaindropWith id: Raindrop.ID) async -> RaindropSuggestionsResult
//	func listSuggestionsForNewRaindrop() async -> RaindropSuggestionsResult	
	func downloadPermanentCopy(ofRaindropWith id: Raindrop.ID) async -> RaindropCopyDownloadResult
	func removeRaindrop(with id: Raindrop.ID) async -> RaindropRemovalResult
}
