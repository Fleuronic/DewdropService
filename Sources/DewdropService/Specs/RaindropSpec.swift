// Copyright © Fleuronic LLC. All rights reserved.

import enum Dewdrop.ItemType
import struct Dewdrop.Raindrop
import struct Dewdrop.Collection
import struct Dewdrop.Media
import struct Dewdrop.Highlight
import struct Foundation.URL
import struct Foundation.Date
import protocol Catena.Scoped

public protocol RaindropSpec {
	associatedtype RaindropList: Scoped<RaindropListFields>
	associatedtype RaindropListFields: RaindropFields

	func listRaindrops(inCollectionWith id: Collection.ID, searchingFor search: String?/*, sortedBy sort: Raindrop.Sort?*/, onPage page: Int?, listing raindropsPerPage: Int?) async -> RaindropList
}
