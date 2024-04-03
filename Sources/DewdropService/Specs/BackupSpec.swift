// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.FileFormat
import struct Dewdrop.Backup

public protocol BackupSpec {
	associatedtype BackupListResult
	associatedtype BackupGenerationResult
	associatedtype BackupFileDownloadResult

	func listBackups() async -> BackupListResult
	func generateNewBackup() async -> BackupGenerationResult
	func downloadFile(forBackupWith id: Backup.ID, as format: FileFormat) async -> BackupFileDownloadResult
}
