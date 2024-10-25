// Copyright © Fleuronic LLC. All rights reserved.

public import struct Dewdrop.Tag
public import struct Dewdrop.Collection
public import protocol Catena.Scoped

public protocol TagSpec {
	associatedtype TagListFields: TagFields
	associatedtype TagList: Scoped<TagListFields>

//	associatedtype TagRenaming
	associatedtype TagRemoval

	func listTags(inCollectionWith id: Collection.ID?) async -> TagList
//	func renameTag(withName tagName: String, toName updatedTagName: String, inCollectionWith id: Collection.ID?) async -> TagRenaming
//	func mergeTags(withNames tagNames: [String], intoTagNamed tagName: String, inCollectionWith id: Collection.ID?) async -> TagRenaming
	func removeTags(withNames tagNames: [String], fromCollectionWith id: Collection.ID?) async -> TagRemoval
}
