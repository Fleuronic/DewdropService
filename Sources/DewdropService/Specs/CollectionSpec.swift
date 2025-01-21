// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Foundation.URL
import protocol Catena.Identifying
import protocol Catena.Scoped

public protocol CollectionSpec {
	associatedtype CollectionFetch: Scoped<CollectionFetchFields>
	associatedtype RootCollectionList: Scoped<RootCollectionListFields>
	associatedtype ChildCollectionList: Scoped<ChildCollectionListFields>
	associatedtype SystemCollectionList: Scoped<SystemCollectionListFields>
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

	func fetchCollection(with id: Collection.ID) async -> CollectionFetch
	func listRootCollections() async -> RootCollectionList
	func listChildCollections() async -> ChildCollectionList
	func listSystemCollections() async -> SystemCollectionList
	func listCovers(searchingFor query: String) async -> CollectionCoverList
	func listFeaturedCovers() async -> CollectionCoverList
	func uploadCover(forCollectionWith id: Collection.ID, usingFileAt url: URL) async -> CollectionCoverUpload
	func expandCollections(_ expanded: Bool) async -> CollectionExpansion
	func sortCollections(by sort: Collection.Sort) async -> CollectionSort
	func mergeCollections(with ids: [Collection.ID], intoCollectionWith id: Collection.ID) async -> CollectionMerge
	func removeCollection(with id: Collection.ID) async -> CollectionRemoval
	func removeCollections(with ids: [Collection.ID]) async -> CollectionRemoval
	func removeEmptyCollections() async -> EmptyCollectionRemoval
	func emptyTrash() async -> TrashRemoval
}
