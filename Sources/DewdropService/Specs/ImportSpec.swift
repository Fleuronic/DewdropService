// Copyright © Fleuronic LLC. All rights reserved.

import struct Foundation.URL

public protocol ImportSpec {
	associatedtype URLInfo
	associatedtype URLExistence
	associatedtype FileImport

	func parse(url: URL) async -> URLInfo
	func checkExistence(of urls: [URL]) async -> URLExistence
	func importFile(at url: URL, withName filename: String) async -> FileImport
}
