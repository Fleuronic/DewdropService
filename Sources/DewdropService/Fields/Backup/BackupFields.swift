// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Backup
import protocol Catena.Fields
import protocol Catena.Valued

public protocol BackupFields: Fields {
	associatedtype Model: Valued<Backup> = Backup.Identified
}

// MARK: -
extension ModelFields: BackupFields where Model == Backup {}
