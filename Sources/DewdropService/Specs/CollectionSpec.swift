// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.User

public protocol CollectionSpec {
	associatedtype CollectionListResult
	associatedtype CollectionDetailsResult
	associatedtype CollectionExpansionCollapseResult
	associatedtype CollectionRemovalResult
	associatedtype CollectionUnshareLeaveResult
	associatedtype SystemCollectionListResult
	associatedtype EmptyCollectionsRemovalResult
	associatedtype CollaboratorListResult
	associatedtype CollaboratorDeletionResult
	associatedtype CoverListResult

	func listRootCollections() async -> CollectionListResult
	func listChildCollections() async -> CollectionListResult
	func listSystemCollections() async -> SystemCollectionListResult
	func fetchCollectionDetails(with id: Collection.ID) async -> CollectionDetailsResult
	func listCollaborators(ofCollectionWith id: Collection.ID) async -> CollaboratorListResult
	func expandCollections(_ excpanded: Bool) async -> CollectionExpansionCollapseResult
	func unshareLeaveCollection(with id: Collection.ID) async -> CollectionUnshareLeaveResult
	func deleteCollaborator(with id: User.ID, fromCollectionWith collectionID: Collection.ID) async -> CollaboratorDeletionResult
	func removeCollection(with id: Collection.ID) async -> CollectionRemovalResult
	func removeEmptyCollections() async -> EmptyCollectionsRemovalResult
	func emptyTrash() async -> CollectionRemovalResult
	func searchForCovers(with text: String) async -> CoverListResult
	func listFeaturedCovers() async -> CoverListResult
}
