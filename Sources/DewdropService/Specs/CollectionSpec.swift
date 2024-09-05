// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.Collaborator
import struct Dewdrop.User
import struct Foundation.URL
import protocol Catena.Scoped

public protocol CollectionSpec {
	associatedtype RootCollectionList: Scoped<RootCollectionListFields>
	associatedtype ChildCollectionList: Scoped<ChildCollectionListFields>
	associatedtype SystemCollectionList: Scoped<SystemCollectionListFields>
	associatedtype CollectionDeletion

	associatedtype RootCollectionListFields: CollectionFields
	associatedtype ChildCollectionListFields: CollectionFields
	associatedtype SystemCollectionListFields: CollectionFields

	func listRootCollections() async -> RootCollectionList
	func listChildCollections() async -> ChildCollectionList
	func listSystemCollections() async -> SystemCollectionList

	func deleteCollection(with id: Collection.ID) async -> CollectionDeletion
	func deleteCollections(with ids: [Collection.ID]) async -> CollectionDeletion
}
