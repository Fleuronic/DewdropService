// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.Collaborator
import struct Dewdrop.User
import struct Foundation.URL
import protocol Catena.Scoped

public protocol CollectionSpec {
	associatedtype CollectionListFields: CollectionFields
	associatedtype CollectionList: Scoped<CollectionListFields>
	associatedtype SystemCollectionListFields: CollectionFields
	associatedtype SystemCollectionList: Scoped<SystemCollectionListFields>

	func listRootCollections() async -> CollectionList
	func listChildCollections() async -> CollectionList
	func listSystemCollections() async -> SystemCollectionList
}
