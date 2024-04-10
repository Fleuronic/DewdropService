// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection

public protocol CollectionSpec {
	associatedtype CollaboratorListResult
	associatedtype CollectionListResult
	associatedtype CollectionDetailsResult
	associatedtype CollectionExpansionCollapseResult
	associatedtype CollectionRemovalResult
	associatedtype EmptyCollectionsRemovalResult
	associatedtype CoverListResult
	associatedtype SystemCollectionListResult

	func listRootCollections() async -> CollectionListResult
	func listChildCollections() async -> CollectionListResult
	func listSystemCollections() async -> SystemCollectionListResult
	func fetchCollectionDetails(with id: Collection.ID) async -> CollectionDetailsResult
	func listCollaborators(ofCollectionWith id: Collection.ID) async -> CollaboratorListResult
	func expandCollections(_ expanded: Bool) async -> CollectionExpansionCollapseResult
	func removeCollection(with id: Collection.ID) async -> CollectionRemovalResult
	func removeEmptyCollections() async -> EmptyCollectionsRemovalResult
	func emptyTrash() async -> CollectionRemovalResult
	func searchForCovers(with text: String) async -> CoverListResult
	func listFeaturedCovers() async -> CoverListResult
}
