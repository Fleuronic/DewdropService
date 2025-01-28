// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

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
	associatedtype RaindropsCreation: Scoped<RaindropCreationFields>
	associatedtype RaindropUpdate: Scoped<RaindropUpdateFields>
	associatedtype RaindropsUpdate
	associatedtype RaindropCoverUpload
	associatedtype RaindropContents
	associatedtype RaindropSuggestions
	associatedtype RaindropRemoval
	associatedtype RaindropsRemoval

	associatedtype RaindropFetchFields: RaindropFields
	associatedtype RaindropListFields: RaindropFields
	associatedtype RaindropCreationFields: RaindropFields
	associatedtype RaindropUpdateFields: RaindropFields

	associatedtype RaindropPendingID: Identifying<Raindrop.Identified>

	func fetchRaindrop(with id: Raindrop.ID) async -> RaindropFetch
	func fetchContents(ofRaindropWith id: Raindrop.ID) async -> RaindropContents
	func listRaindrops(inCollectionWith id: Collection.ID, searchingFor query: String?, sortedBy sort: Raindrop.Sort?, onPage page: Int?, listing raindropsPerPage: Int?) async -> RaindropList
	func createRaindrop(_ id: RaindropPendingID, for url: URL, with parameters: Raindrop.CreationParameters) async -> RaindropCreation
	func createRaindrops(_ ids: [RaindropPendingID], for urls: [URL], with parameters: [Raindrop.CreationParameters]) async -> RaindropsCreation
	func updateRaindrop(with id: Raindrop.ID, to url: URL?, updating parameters: Raindrop.CreationParameters) async -> RaindropUpdate
	func updateRaindrops(with ids: [Raindrop.ID], inCollectionWith collectionID: Collection.ID, searchingFor query: String?, updating parameters: Raindrop.UpdateParameters) async -> RaindropsUpdate
	func uploadCover(forRaindropWith id: Raindrop.ID, usingFileAt url: URL) async -> RaindropCoverUpload
	func findSuggestions(forRaindropWith id: Raindrop.ID) async -> RaindropSuggestions
	func findSuggestions(forRaindropCreatedFor url: URL) async -> RaindropSuggestions
	func removeRaindrop(with id: Raindrop.ID) async -> RaindropRemoval
	func removeRaindrops(fromCollectionWith collectionID: Collection.ID, matching ids: [Raindrop.ID]?, searchingFor search: String?) async -> RaindropsRemoval
}

// MARK: -
public extension Raindrop {
	@MemberwiseInit(.public)
	struct CreationParameters {
		@Init(default: nil) public let title: String?
		@Init(default: nil) public let itemType: Raindrop.ItemType?
		@Init(default: nil) public let excerpt: String?
		@Init(default: nil) public let coverURL: URL?
		@Init(default: nil) public let order: Int?
		@Init(default: nil) public let collectionID: Collection.ID?
		@Init(default: nil) public let tagNames: [String]?
		@Init(default: nil) public let media: [Media]?
		@Init(default: nil) public let highlightContents: [Highlight.Content]?
		@Init(default: nil) public let reminder: Raindrop.Reminder?
		@Init(default: nil) public let isFavorite: Bool?
		@Init(default: nil) public let creationDate: Date?
		@Init(default: nil) public let updateDate: Date?
		@Init(default: false) public let shouldParse: Bool
	}

	@MemberwiseInit(.public)
	struct UpdateParameters {
		@Init(default: nil) public let coverURL: URL?
		@Init(default: nil) public let collectionID: Collection.ID?
		@Init(default: nil) public let tagNames: [String]?
		@Init(default: nil) public let media: [Media]?
		@Init(default: nil) public let isFavorite: Bool?
	}
}
