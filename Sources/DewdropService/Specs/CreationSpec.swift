// Copyright © Fleuronic LLC. All rights reserved.

import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Foundation.URL
import protocol Catena.Scoped

public protocol CreationSpec {
	associatedtype RaindropCreation: Scoped<RaindropCreationFields>
	associatedtype RaindropCreationFields: RaindropFields

	func createRaindrop(
		url: URL,
		title: String?
	//	itemType: ItemType?,
	//	excerpt: String?,
	//	coverURL: URL?,
	//	order: Int?,
	//	collectionID: Collection.ID?,
	//	tagNames: [String]?,
	//	media: [Media]?,
	//	highlightContents: [Highlight.Content]?,
	//	isFavorite: Bool?,
	//	isBroken: Bool?,
	//	creationDate: Date?,
	//	updateDate: Date?,
	//	shouldParse: Bool
	) async -> RaindropCreation
}
