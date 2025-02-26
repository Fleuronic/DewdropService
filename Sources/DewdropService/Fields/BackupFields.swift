// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup
import protocol Catena.Valued
import protocol Catena.Fields

public protocol BackupFields: Fields {
	associatedtype Model: Valued<Backup> = Backup.Identified
}
