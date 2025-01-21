// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Dewdrop.Media
import struct Dewdrop.Highlight
import struct Foundation.URL
import struct Foundation.Date
import protocol Catena.Identifying
import protocol Catena.Scoped

public protocol RaindropSpec {
	associatedtype RaindropFetch: Scoped<RaindropFetchFields>
	associatedtype RaindropList: Scoped<RaindropListFields>
	associatedtype RaindropCreation: Scoped<RaindropCreationFields>
	associatedtype RaindropCoverUpload
	associatedtype RaindropContents
	associatedtype RaindropSuggestions
	associatedtype RaindropRemoval
	associatedtype RaindropsRemoval

	associatedtype RaindropFetchFields: RaindropFields
	associatedtype RaindropListFields: RaindropFields
	associatedtype RaindropCreationFields: RaindropFields

	associatedtype RaindropID: Identifying<Raindrop.Identified>
	associatedtype RaindropPendingID: Identifying<Raindrop.Identified>

	func fetchRaindrop(with id: Raindrop.ID) async -> RaindropFetch
	func fetchContents(ofRaindropWith id: Raindrop.ID) async -> RaindropContents
	func listRaindrops(inCollectionWith id: Collection.ID, searchingFor query: String?, sortedBy sort: Raindrop.Sort?, onPage page: Int?, listing raindropsPerPage: Int?) async -> RaindropList
	func uploadCover(forRaindropWith id: Raindrop.ID, usingFileAt url: URL) async -> RaindropCoverUpload
	func findSuggestions(forRaindropWith id: RaindropID) async -> RaindropSuggestions
	func findSuggestions(forRaindropCreatedFor url: URL) async -> RaindropSuggestions
	func removeRaindrop(with id: Raindrop.ID) async -> RaindropRemoval
	func removeRaindrops(fromCollectionWith collectionID: Collection.ID, matching ids: [Raindrop.ID]?, searchingFor search: String?) async -> RaindropsRemoval

	func createRaindrop(
		id: RaindropPendingID,
		url: URL,
		title: String?,
		itemType: Raindrop.ItemType?,
		excerpt: String?,
		coverURL: URL?,
		order: Int?,
		collectionID: Collection.ID?,
		tagNames: [String]?,
		media: [Media]?,
		highlightContents: [Highlight.Content]?,
		reminder: Raindrop.Reminder?,
		isFavorite: Bool?,
		creationDate: Date?,
		updateDate: Date?,
		shouldParse: Bool
	) async -> RaindropCreation
}
