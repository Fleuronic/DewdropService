// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.ItemType
import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Dewdrop.Media
import struct Dewdrop.Highlight
import struct Foundation.URL
import struct Foundation.Date

public protocol RaindropSpec {
//	associatedtype RaindropDetailsResult
//	associatedtype RaindropHighlightsResult
//	associatedtype RaindropCopyDownloadResult
//	associatedtype RaindropSuggestionsResult
	associatedtype RaindropListResult
//	associatedtype RaindropCreationResult
//	associatedtype RaindropCreationListResult
//	associatedtype RaindropCoverUploadResult
//	associatedtype RaindropRemovalResult
//	
//	func createRaindrop(
//		url: URL,
//		title: String?,
//		itemType: ItemType?,
//		excerpt: String?,
//		coverURL: URL?,
//		order: Int?,
//		collectionID: Collection.ID?,
//		tagNames: [String]?,
//		media: [Media]?,
//		highlightContents: [Highlight.Content]?,
//		isFavorite: Bool?,
//		isBroken: Bool?,
//		creationDate: Date?,
//		updateDate: Date?,
//		shouldParse: Bool
//	) async -> RaindropCreationResult
//	
//	func createRaindrops(
//		data: [
//			(
//				url: URL,
//				title: String?,
//				itemType: ItemType?,
//				excerpt: String?,
//				coverURL: URL?,
//				order: Int?,
//				collectionID: Collection.ID?,
//				tagNames: [String]?,
//				media: [Media]?,
//				highlightContents: [Highlight.Content]?,
//				isFavorite: Bool?,
//				isBroken: Bool?,
//				creationDate: Date?,
//				updateDate: Date?,
//				shouldParse: Bool
//			)
//		]
//	) async -> RaindropCreationListResult
//
//	func fetchDetails(forRaindropWith id: Raindrop.ID) async -> RaindropDetailsResult
//	func fetchHighlights(forRaindropWith id: Raindrop.ID) async -> RaindropHighlightsResult
//	func downloadPermanentCopy(ofRaindropWith id: Raindrop.ID) async -> RaindropCopyDownloadResult
//	func listSuggestions(forRaindropWith id: Raindrop.ID) async -> RaindropSuggestionsResult
//	func listSuggestionsForNewRaindrop(with url: URL) async -> RaindropSuggestionsResult
	func listRaindrops(inCollectionWith id: Collection.ID, searchingFor search: String?/*, sortedBy sort: Raindrop.Sort?*/, onPage page: Int?, listing raindropsPerPage: Int?) async -> RaindropListResult
//	func uploadCover(forRaindropWith id: Raindrop.ID, usingFileAt url: URL, withName filename: String) async -> RaindropCoverUploadResult
//	func uploadFile(at url: URL, withName filename: String, toCollectionWith id: Collection.ID?) async -> RaindropCreationResult
//	func removeRaindrop(with id: Raindrop.ID) async -> RaindropRemovalResult
//	func removeRaindrops(fromCollectionWith id: Collection.ID?, matching ids: [Raindrop.ID]?, searchingFor search: String?) async -> RaindropRemovalResult
}
