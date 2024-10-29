// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.FileFormat
import struct Dewdrop.Backup
import protocol Catena.Scoped

public protocol BackupSpec {
	associatedtype BackupList: Scoped<BackupListFields>
	associatedtype BackupCreation
	associatedtype BackupData

	associatedtype BackupListFields: BackupFields

	func listBackups() async -> BackupList
	func createBackup() async -> BackupCreation
	func downloadBackup(with id: Backup.ID, as format: FileFormat) async -> BackupData
}
