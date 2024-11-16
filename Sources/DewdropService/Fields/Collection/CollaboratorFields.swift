// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collaborator
import protocol Catena.Valued
import protocol Catenary.Fields

public protocol CollaboratorFields: Fields {
	typealias Model = Collaborator
}

// MARK: -
extension ModelFields: CollaboratorFields where Model == Collaborator {}
