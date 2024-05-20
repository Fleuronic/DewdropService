// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.FileFormat
import struct Dewdrop.Backup
import struct Foundation.Data
import protocol Catena.Scoped

public protocol BackupSpec {
	associatedtype BackupData
	associatedtype BackupCreation
	associatedtype BackupListFields
	associatedtype BackupList: Scoped<BackupListFields>

	func listBackups() async -> BackupList
	func createBackup() async -> BackupCreation
	func downloadBackup(with id: Backup.ID, as format: FileFormat) async -> BackupData
}
