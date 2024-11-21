// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection
import protocol Catena.Identifying
import protocol Catena.Scoped

public protocol CollaboratorSpec {
	associatedtype CollaboratorList: Scoped<CollaboratorListFields>

	associatedtype CollaboratorListFields: CollaboratorFields

	func listCollaborators(ofCollectionWith id: Collection.ID) async -> CollaboratorList
}
