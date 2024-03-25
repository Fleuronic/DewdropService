// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Collection

public protocol CollectionSpec {
	associatedtype CollectionListResult

	func listCollections() async -> CollectionListResult
}
