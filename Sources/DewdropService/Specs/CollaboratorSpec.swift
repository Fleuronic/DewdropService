// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collaborator
import struct Dewdrop.Collection
import protocol Catena.Identifying
import protocol Catena.Scoped

public protocol CollaboratorSpec {
	associatedtype CollaboratorList: Scoped<CollaboratorListFields>
	associatedtype CollaboratorRoleChange
	associatedtype CollaboratorRemoval
	associatedtype CollaboratorInvitation
	associatedtype CollaboratorAcceptance

	associatedtype CollaboratorListFields: CollaboratorFields

	func listCollaborators(ofCollectionWith id: Collection.ID) async -> CollaboratorList
	func shareCollection(with id: Collection.ID, toCollaborateAs role: Collaborator.Role, sendingTo emails: [String]) async -> CollaboratorInvitation
	func acceptInvitation(forCollectionWith id: Collection.ID, usingToken token: String) async -> CollaboratorAcceptance
	func changeRole(ofCollaboratorWith id: Collaborator.ID, inCollectionWith collectionID: Collection.ID, to role: Collaborator.Role) async -> CollaboratorRoleChange
	func removeCollaborator(with id: Collaborator.ID, fromCollectionWith collectionID: Collection.ID) async -> CollaboratorRemoval
	func stopSharingCollection(with id: Collection.ID) async -> CollaboratorRemoval
}
