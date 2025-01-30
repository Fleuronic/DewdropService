// Copyright © Fleuronic LLC. All rights reserved.

import MemberwiseInit

import struct Dewdrop.Collection
import struct Foundation.URL
import protocol Catena.Identifying
import protocol Catena.Scoped

public protocol CollectionSpec {
	associatedtype CollectionFetch: Scoped<CollectionFetchFields>
	associatedtype RootCollectionList: Scoped<RootCollectionListFields>
	associatedtype ChildCollectionList: Scoped<ChildCollectionListFields>
	associatedtype SystemCollectionList: Scoped<SystemCollectionListFields>
	associatedtype CollectionCreation: Scoped<CollectionCreationFields>
	associatedtype CollectionUpdate: Scoped<CollectionUpdateFields>
	associatedtype CollectionCoverList
	associatedtype CollectionCoverUpload
	associatedtype CollectionExpansion
	associatedtype CollectionSort
	associatedtype CollectionMerge
	associatedtype CollectionRemoval
	associatedtype EmptyCollectionRemoval
	associatedtype TrashRemoval

	associatedtype CollectionFetchFields: CollectionFields
	associatedtype RootCollectionListFields: CollectionFields
	associatedtype ChildCollectionListFields: CollectionFields
	associatedtype SystemCollectionListFields: CollectionFields
	associatedtype CollectionCreationFields: CollectionFields
	associatedtype CollectionUpdateFields: CollectionFields

	associatedtype CollectionID: Identifying<Collection.Identified>
	associatedtype CollectionPendingID: Identifying<Collection.Identified>

	func fetchCollection(with id: Collection.ID) async -> CollectionFetch
	func listRootCollections() async -> RootCollectionList
	func listChildCollections() async -> ChildCollectionList
	func listSystemCollections() async -> SystemCollectionList
	func listCovers(searchingFor query: String) async -> CollectionCoverList
	func listFeaturedCovers() async -> CollectionCoverList
	func createCollection(_ id: CollectionPendingID, titled title: String, with parameters: Collection.Parameters) async -> CollectionCreation
	func updateCollection(with id: Collection.ID, toTitle title: String?, expanding: Bool?, updating parameters: Collection.Parameters) async -> CollectionUpdate
	func uploadCover(forCollectionWith id: CollectionID, usingFileAt url: URL) async -> CollectionCoverUpload
	func expandCollections(_ expanded: Bool) async -> CollectionExpansion
	func sortCollections(by sort: Collection.Sort) async -> CollectionSort
	func mergeCollections(with ids: [Collection.ID], intoCollectionWith id: Collection.ID) async -> CollectionMerge
	func removeCollection(with id: Collection.ID) async -> CollectionRemoval
	func removeCollections(with ids: [Collection.ID]) async -> CollectionRemoval
	func removeEmptyCollections() async -> EmptyCollectionRemoval
	func emptyTrash() async -> TrashRemoval
}

// MARK: -
public extension Collection {
	@MemberwiseInit(.public)
	struct Parameters {
		@Init(default: nil) public let coverURL: URL?
		@Init(default: nil) public let view: Collection.View?
		@Init(default: nil) public let sortIndex: Int?
		@Init(default: nil) public let `public`: Bool?
		@Init(default: nil) public let parentID: Collection.ID?
	}
}
