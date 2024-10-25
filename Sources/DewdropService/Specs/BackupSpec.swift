// Copyright © Fleuronic LLC. All rights reserved.

public import enum Dewdrop.FileFormat
public import struct Dewdrop.Backup
public import protocol Catena.Scoped

public protocol BackupSpec {
	associatedtype BackupList: Scoped<BackupListFields>
	associatedtype BackupListFields: BackupFields

	associatedtype BackupCreation
	associatedtype BackupData

	func listBackups() async -> BackupList
	func createBackup() async -> BackupCreation
	func downloadBackup(with id: Backup.ID, as format: FileFormat) async -> BackupData
}
