// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Backup
public import protocol Catena.Fields
public import protocol Catena.Valued

public protocol BackupFields: Fields {
	associatedtype Model: Valued<Backup> = Backup.Identified
}

// MARK: -
extension ModelFields: BackupFields where Model == Backup {}
