// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.FileFormat
import struct Dewdrop.Backup
import struct Foundation.Data

public protocol BackupSpec {
	associatedtype BackupList
	associatedtype BackupCreationResult
	associatedtype BackupData

	func listBackups() async -> BackupList
	func createBackup() async -> BackupCreationResult
	func downloadBackup(with id: Backup.ID, as format: FileFormat) async -> BackupData
}
