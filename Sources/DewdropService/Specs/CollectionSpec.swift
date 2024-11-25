// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import protocol Catena.Identifying
import protocol Catena.Scoped

public protocol CollectionSpec {
	associatedtype CollectionFetch: Scoped<CollectionFetchFields>
	associatedtype RootCollectionList: Scoped<RootCollectionListFields>
	associatedtype ChildCollectionList: Scoped<ChildCollectionListFields>
	associatedtype SystemCollectionList: Scoped<SystemCollectionListFields>
	associatedtype CollectionRemoval
	associatedtype TrashRemoval

	associatedtype CollectionFetchFields: CollectionFields
	associatedtype RootCollectionListFields: CollectionFields
	associatedtype ChildCollectionListFields: CollectionFields
	associatedtype SystemCollectionListFields: CollectionFields

	func fetchCollection(with id: Collection.ID) async -> CollectionFetch
	func listRootCollections() async -> RootCollectionList
	func listChildCollections() async -> ChildCollectionList
	func listSystemCollections() async -> SystemCollectionList
	func removeCollection(with id: Collection.ID) async -> CollectionRemoval
	func removeCollections(with ids: [Collection.ID]) async -> CollectionRemoval
	func emptyTrash() async -> TrashRemoval
}
