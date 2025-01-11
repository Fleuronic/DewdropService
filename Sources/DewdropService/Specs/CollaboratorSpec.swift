// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collaborator
import struct Dewdrop.Collection
import protocol Catena.Identifying
import protocol Catena.Scoped

public protocol CollaboratorSpec {
	associatedtype CollaboratorList: Scoped<CollaboratorListFields>
	associatedtype CollaboratorRoleChange

	associatedtype CollaboratorListFields: CollaboratorFields

	func listCollaborators(ofCollectionWith id: Collection.ID) async -> CollaboratorList
	func changeRole(ofCollaboratorWith id: Collaborator.ID, inCollectionWith collectionID: Collection.ID, to role: Collaborator.Role) async -> CollaboratorRoleChange
}
