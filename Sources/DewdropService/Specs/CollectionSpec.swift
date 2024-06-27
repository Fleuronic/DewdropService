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
	// associatedtype CollaboratorListResult
	// associatedtype CoverListResult
	// associatedtype CollectionDetailsResult
	// associatedtype CollectionCoverUploadResult
	// associatedtype CollectionShareResult
	// associatedtype CollectionJoinResult
	// associatedtype CollectionMergeResult
	// associatedtype CollectionReorderResult
	// associatedtype CollectionExpansionCollapseResult
	// associatedtype CollaboratorUpdateResult
	// associatedtype CollaboratorDeletionResult
	// associatedtype CollectionRemovalResult
	// associatedtype CollectionUnshareLeaveResult
	// associatedtype EmptyCollectionsRemovalResult
	
	// 	func createCollection(
	// 		title: String?,
	// 		coverURL: URL?,
	// 		public: Bool?,
	// 		view: Collection.View?,
	// 		sortIndex: Int?,
	// 		parentID: Collection.ID?
	// 	) async -> CollectionDetailsResult
	// 
	// 	func updateCollection(
	// 		with id: Collection.ID,
	// 		title: String?,
	// 		coverURL: URL?,
	// 		public: Bool?,
	// 		view: Collection.View?,
	// 		sortIndex: Int?,
	// 		expanded: Bool?,
	// 		parentID: Collection.ID?
	// 	) async -> CollectionDetailsResult

	// func fetchDetails(forCollectionWith id: Collection.ID) async -> CollectionDetailsResult
	// func listCollaborators(ofCollectionWith id: Collection.ID) async -> CollaboratorListResult
	func listRootCollections() async -> CollectionList
	func listChildCollections() async -> CollectionList
	func listSystemCollections() async -> SystemCollectionList
	// 	func expandCollections(_ expanded: Bool) async -> CollectionExpansionCollapseResult
	// 	func reorderCollections(by sort: Collection.Sort) async -> CollectionReorderResult
	// 	func mergeCollections(with ids: [Collection.ID], intoCollectionWith id: Collection.ID) async -> CollectionMergeResult
	// 	func removeCollection(with id: Collection.ID) async -> CollectionRemovalResult
	// 	func removeCollections(with ids: [Collection.ID]) async -> CollectionRemovalResult
	// 	func removeEmptyCollections() async -> EmptyCollectionsRemovalResult
	// 	func emptyTrash() async -> CollectionRemovalResult
	// 
	// 	func shareCollection(with id: Collection.ID, toUsersWithEmails emails: [String], as role: Collaborator.Role) async -> CollectionShareResult
	// 	func acceptInvitation(toJoinCollectionWith id: Collection.ID, viaEmailWithToken token: String) async -> CollectionJoinResult
	// 	func changeAccessLevelOfCollaborator(with id: User.ID, inCollectionWith collectionID: Collection.ID, to role: Collaborator.Role) async -> CollaboratorUpdateResult
	// 	func removeCollaborator(with id: User.ID, fromCollectionWith collectionID: Collection.ID) async -> CollaboratorDeletionResult
	// 	func unshareLeaveCollection(with id: Collection.ID) async -> CollectionUnshareLeaveResult
	// 
	// 	func listFeaturedCovers() async -> CoverListResult
	// 	func searchForCovers(with text: String) async -> CoverListResult
	// 	func uploadCover(forCollectionWith id: Collection.ID, usingFileAt url: URL, withName filename: String) async -> CollectionCoverUploadResult
}
