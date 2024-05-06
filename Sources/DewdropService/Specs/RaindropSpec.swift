// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Foundation.URL

public protocol RaindropSpec {
	associatedtype RaindropDetailsResult
	associatedtype RaindropHighlightsResult
	associatedtype RaindropCopyDownloadResult
	associatedtype RaindropSuggestionsResult
	associatedtype RaindropListResult
	associatedtype RaindropRemovalResult

	func fetchDetails(forRaindropWith id: Raindrop.ID) async -> RaindropDetailsResult
	func fetchHighlights(forRaindropWith id: Raindrop.ID) async -> RaindropHighlightsResult
	func downloadPermanentCopy(ofRaindropWith id: Raindrop.ID) async -> RaindropCopyDownloadResult
	func listSuggestions(forRaindropWith id: Raindrop.ID) async -> RaindropSuggestionsResult
	func listSuggestionsForNewRaindrop(with url: URL) async -> RaindropSuggestionsResult
	func listRaindrops(inCollectionWith id: Collection.ID, searchingFor search: String?, sortedBy sort: Raindrop.Sort?, onPage page: Int?, listing raindropsPerPage: Int?) async -> RaindropListResult
	func removeRaindrop(with id: Raindrop.ID) async -> RaindropRemovalResult
	func removeRaindrops(fromCollectionWith id: Collection.ID?, matching ids: [Raindrop.ID]?, searchingFor search: String?) async -> RaindropRemovalResult
}
