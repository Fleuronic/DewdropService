// Copyright © Fleuronic LLC. All rights reserved.

import struct Foundation.URL

public protocol ImportSpec {
	associatedtype InfoResult

	func parseInfo(from url: URL) async -> InfoResult
}
