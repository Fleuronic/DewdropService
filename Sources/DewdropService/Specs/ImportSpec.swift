// Copyright © Fleuronic LLC. All rights reserved.

import struct Foundation.URL
import protocol Catena.Scoped

public protocol ImportSpec {
	associatedtype URLInfo: Scoped<URLInfoFields>
	associatedtype URLExistence: Scoped<URLExistenceFields>
	associatedtype FileImport: Scoped<FileImportFields>

	associatedtype URLInfoFields: InfoFields
	associatedtype URLExistenceFields: RaindropFields
	associatedtype FileImportFields: ImportFields

	func parse(url: URL) async -> URLInfo
	func checkExistence(of urls: [URL]) async -> URLExistence
	func importFile(at url: URL, withName filename: String) async -> FileImport
}
