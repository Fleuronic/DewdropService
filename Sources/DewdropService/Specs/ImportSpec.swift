// Copyright © Fleuronic LLC. All rights reserved.

import struct Foundation.URL
import protocol Catena.Scoped

public protocol ImportSpec {
	associatedtype FileImport: Scoped<FileImportFields>
	associatedtype URLInfo: Scoped<URLInfoFields>
	associatedtype URLExistence

	associatedtype FileImportFields: ImportFields
	associatedtype URLInfoFields: InfoFields

	func parse(url: URL) async -> URLInfo
	func checkExistence(of urls: [URL]) async -> URLExistence
	func importFile(at url: URL, withName filename: String) async -> FileImport
}
