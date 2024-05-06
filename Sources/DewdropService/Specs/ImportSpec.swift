// Copyright © Fleuronic LLC. All rights reserved.

import struct Foundation.URL

public protocol ImportSpec {
	associatedtype InfoResult
	associatedtype ImportResult
	associatedtype URLCheckResult

	func parseInfo(from url: URL) async -> InfoResult
	func parseImport(ofFileAt url: URL, withName filename: String) async -> ImportResult
	func checkExistence(of urls: [URL]) async -> URLCheckResult
}
