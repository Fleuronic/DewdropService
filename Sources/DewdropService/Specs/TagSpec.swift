// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import struct Dewdrop.Collection

public protocol TagSpec {
	associatedtype TagListResult

	func listTags(inCollectionWith id: Collection.ID?) async -> TagListResult
}
