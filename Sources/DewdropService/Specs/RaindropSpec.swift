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
	associatedtype RaindropCreationResult
	associatedtype RaindropCreationListResult
	associatedtype RaindropCoverUploadResult
	associatedtype RaindropRemovalResult
	
	func createRaindrop(
		url: URL
	) async -> RaindropCreationResult
	
	func createRaindrops(data: [URL]) async -> RaindropCreationListResult
	func fetchDetails(forRaindropWith id: Raindrop.ID) async -> RaindropDetailsResult
	func fetchHighlights(forRaindropWith id: Raindrop.ID) async -> RaindropHighlightsResult
	func downloadPermanentCopy(ofRaindropWith id: Raindrop.ID) async -> RaindropCopyDownloadResult
	func listSuggestions(forRaindropWith id: Raindrop.ID) async -> RaindropSuggestionsResult
	func listSuggestionsForNewRaindrop(with url: URL) async -> RaindropSuggestionsResult
	func listRaindrops(inCollectionWith id: Collection.ID, searchingFor search: String?, sortedBy sort: Raindrop.Sort?, onPage page: Int?, listing raindropsPerPage: Int?) async -> RaindropListResult
	func uploadCover(forRaindropWith id: Raindrop.ID, usingFileAt url: URL, withName filename: String) async -> RaindropCoverUploadResult
	func uploadFile(at url: URL, withName filename: String, toCollectionWith id: Collection.ID?) async -> RaindropCreationResult
	func removeRaindrop(with id: Raindrop.ID) async -> RaindropRemovalResult
	func removeRaindrops(fromCollectionWith id: Collection.ID?, matching ids: [Raindrop.ID]?, searchingFor search: String?) async -> RaindropRemovalResult
}
