// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.FileFormat
import struct Dewdrop.Backup
import struct Foundation.Data
import protocol Catena.Scoped

public protocol BackupSpec {
	associatedtype BackupList: Scoped<BackupListFields>
	associatedtype BackupListFields: BackupFields

	associatedtype BackupCreation
	associatedtype BackupData

	func listBackups() async -> BackupList
	func createBackup() async -> BackupCreation
	func downloadBackup(with id: Backup.ID, as format: FileFormat) async -> BackupData
}
