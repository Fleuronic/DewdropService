// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Tag
import struct Dewdrop.Collection
import protocol Catena.Scoped

public protocol TagSpec {
//	associatedtype TagRename
//	associatedtype TagRemoval
	associatedtype TagListFields: TagFields
	associatedtype TagList: Scoped<TagListFields>

	func listTags(inCollectionWith id: Collection.ID?) async -> TagList
//	func renameTag(withName tagName: String, toName updatedTagName: String, inCollectionWith id: Collection.ID?) async -> TagRename
//	func mergeTags(withNames tagNames: [String], intoTagNamed tagName: String, inCollectionWith id: Collection.ID?) async -> TagRename
//	func removeTags(withNames tagNames: [String], fromCollectionWith id: Collection.ID?) async -> TagRemoval
}
