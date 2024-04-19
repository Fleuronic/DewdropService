// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import struct Dewdrop.Collection

public protocol TagSpec {
	associatedtype TagListResult
	associatedtype TagRenameResult
	associatedtype TagRemovalResult

	func listTags(inCollectionWith id: Collection.ID?) async -> TagListResult
	func renameTag(withName tagName: String, toName updatedTagName: String, inCollectionWith id: Collection.ID?) async -> TagRenameResult
	func mergeTags(withNames tagNames: [String], intoTagNamed tagName: String, inCollectionWith id: Collection.ID?) async -> TagRenameResult
	func removeTags(withNames tagNames: [String], fromCollectionWith id: Collection.ID?) async -> TagRemovalResult
}
