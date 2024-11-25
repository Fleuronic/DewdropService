// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collaborator
import protocol Catena.Valued
import protocol Catena.Fields

public protocol CollaboratorFields: Fields {
	associatedtype Model: Valued<Collaborator> = Collaborator.Identified
}

