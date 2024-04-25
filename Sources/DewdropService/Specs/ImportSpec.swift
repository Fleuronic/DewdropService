// Copyright © Fleuronic LLC. All rights reserved.

import struct Foundation.URL

public protocol ImportSpec {
	associatedtype InfoResult
	associatedtype URLCheckResult

	func parseInfo(from url: URL) async -> InfoResult
	func checkExistence(of urls: [URL]) async -> URLCheckResult
}
