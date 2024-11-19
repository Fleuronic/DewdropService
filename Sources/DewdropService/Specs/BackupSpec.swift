// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.FileFormat
import struct Dewdrop.Backup
import protocol Catena.Identifying
import protocol Catena.Scoped

public protocol BackupSpec {
	associatedtype BackupList: Scoped<BackupListFields>
	associatedtype BackupCreator
	associatedtype BackupCreation
	associatedtype BackupData

	associatedtype BackupListFields: BackupFields

	associatedtype BackupID: Identifying<Backup.Identified>

	func listBackups() async -> BackupList
	func createBackup(using creator: BackupCreator) async -> BackupCreation
	func downloadBackup(with id: BackupID, as format: FileFormat) async -> BackupData
}
