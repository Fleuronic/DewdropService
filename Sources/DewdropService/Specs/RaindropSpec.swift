// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.ItemType
import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Dewdrop.Media
import struct Dewdrop.Highlight
import protocol Catena.Scoped

public protocol RaindropSpec {
	associatedtype Raindrop: Scoped<RaindropFields>
	associatedtype RaindropList: Scoped<RaindropListFields>

	associatedtype RaindropFields: DewdropService.RaindropFields
	associatedtype RaindropListFields: DewdropService.RaindropFields

	func fetchRaindrop(with id: Dewdrop.Raindrop.ID) async -> Raindrop
	func listRaindrops(inCollectionWith id: Collection.ID, searchingFor query: String?/*, sortedBy sort: Raindrop.Sort?*/, onPage page: Int?, listing raindropsPerPage: Int?) async -> RaindropList
}
