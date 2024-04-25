// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import struct Dewdrop.Collaborator
import struct Dewdrop.User

public protocol CollectionSpec {
	associatedtype CollectionListResult
	associatedtype CollectionDetailsResult
	associatedtype CollectionShareResult
	associatedtype CollectionMergeResult
	associatedtype CollectionReorderResult
	associatedtype CollectionExpansionCollapseResult
	associatedtype CollectionJoinResult
	associatedtype CollectionRemovalResult
	associatedtype CollectionUnshareLeaveResult
	associatedtype SystemCollectionListResult
	associatedtype EmptyCollectionsRemovalResult
	associatedtype CollaboratorListResult
	associatedtype CollaboratorUpdateResult
	associatedtype CollaboratorDeletionResult
	associatedtype CoverListResult

	func fetchCollectionDetails(with id: Collection.ID) async -> CollectionDetailsResult
	func listRootCollections() async -> CollectionListResult
	func listChildCollections() async -> CollectionListResult
	func listSystemCollections() async -> SystemCollectionListResult
	func listCollaborators(ofCollectionWith id: Collection.ID) async -> CollaboratorListResult
	func listFeaturedCovers() async -> CoverListResult
	func searchForCovers(with text: String) async -> CoverListResult
	func shareCollection(with id: Collection.ID, toUsersWithEmails emails: [String], as role: Collaborator.Role) async -> CollectionShareResult
	func acceptInvitation(toJoinCollectionWith id: Collection.ID, viaEmailWithToken token: String) async -> CollectionJoinResult
	func mergeCollections(with ids: [Collection.ID], intoCollectionWith id: Collection.ID) async -> CollectionMergeResult
	func reorderCollections(by sort: Collection.Sort) async -> CollectionReorderResult
	func expandCollections(_ excpanded: Bool) async -> CollectionExpansionCollapseResult
	func changeAccessLevelOfCollaborator(with id: User.ID, inCollectionWith collectionID: Collection.ID, to role: Collaborator.Role) async -> CollaboratorUpdateResult
	func removeCollaborator(with id: User.ID, fromCollectionWith collectionID: Collection.ID) async -> CollaboratorDeletionResult
	func removeCollection(with id: Collection.ID) async -> CollectionRemovalResult
	func removeCollections(with ids: [Collection.ID]) async -> CollectionRemovalResult
	func removeEmptyCollections() async -> EmptyCollectionsRemovalResult
	func unshareLeaveCollection(with id: Collection.ID) async -> CollectionUnshareLeaveResult
	func emptyTrash() async -> CollectionRemovalResult
}
